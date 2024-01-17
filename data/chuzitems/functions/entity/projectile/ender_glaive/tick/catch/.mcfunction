#> chuzitems:entity/projectile/ender_glaive/tick/catch/
#
# 
#
# @within function
#   chuzitems:entity/projectile/ender_glaive/tick/recursion
#   chuzitems:entity/projectile/ender_glaive/tick/teleport/

# キャッチ
    function chuzitems:entity/projectile/glaive_common/tick/catch/

# 自分の位置で演出
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 0.5 1
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..120]
    particle minecraft:dust_color_transition 1 0.5 1 1 1 0 1 ~ ~ ~ 0.25 0.25 0.25 0 50 force @a[distance=..120]

# プレイヤーの位置で演出
    execute at @p[tag=Chuz.ID.Target] positioned ~ ~1 ~ run function chuzitems:entity/projectile/ender_glaive/tick/catch/vfx

# 乗せてるアイテムを持ち主に送る
    execute on passengers if entity @s[type=#chuzitems:vacuumable] at @p[tag=Chuz.ID.Target] run tp ~ ~ ~

# キル
    function chuzitems:entity/projectile/glaive_common/tick/kill