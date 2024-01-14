#> chuzitems:entity/projectile/ender_glaive/tick/catch/
#
# 
#
# @within function
#   chuzitems:entity/projectile/ender_glaive/tick/recursion
#   chuzitems:entity/projectile/ender_glaive/tick/teleport/

# データ取得
    function chuzitems:entity/projectile/glaive_common/tick/catch/store_current_item

# ブーメランを与える
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.Glaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.mainhand loot chuzitems:item/ender_glaive
    # オフハンド
        execute if entity @s[tag=ChuzItems.Projectile.Glaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.offhand loot chuzitems:item/ender_glaive

# データ戻す
    function chuzitems:entity/projectile/glaive_common/tick/catch/give_previous_item

# 演出
    playsound minecraft:block.iron_door.close neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1.5 1

# 乗せてるアイテムを持ち主に送る
    execute on passengers if entity @s[type=#chuzitems:vacuumable] at @p[tag=Chuz.ID.Target] run tp ~ ~ ~

# キル
    function chuzitems:entity/projectile/glaive_common/tick/kill