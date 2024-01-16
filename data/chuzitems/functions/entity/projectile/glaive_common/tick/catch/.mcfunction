#> chuzitems:entity/projectile/glaive_common/tick/catch/
#
# 
#
# @within function chuzitems:entity/projectile/**

# 今の手持ちをストレージに放り込む
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.Glaive.Off] as @p[gamemode=!creative,tag=Chuz.ID.Target] run function chuzitems:entity/projectile/glaive_common/tick/catch/get_data/mainhand
    # オフハンド
        execute if entity @s[tag=ChuzItems.Projectile.Glaive.Off] as @p[gamemode=!creative,tag=Chuz.ID.Target] run function chuzitems:entity/projectile/glaive_common/tick/catch/get_data/offhand

# ブーメランを与える
    function chuzitems:entity/projectile/glaive_common/tick/catch/macro with storage chuz:context Glaive

# さっきの手持ちをgiveする
    execute as @p[gamemode=!creative,tag=Chuz.ID.Target] if data storage chuz:context Give.tag run function chuzitems:entity/projectile/glaive_common/tick/catch/give with storage chuz:context Give
    execute as @p[gamemode=!creative,tag=Chuz.ID.Target] unless data storage chuz:context Give.tag run function chuzitems:entity/projectile/glaive_common/tick/catch/give_nodata with storage chuz:context Give

# キャッチ時の手元データを即時にブーメランにしとく
    execute as @p[tag=Chuz.ID.Target] run function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Main set from entity @p[tag=Chuz.ID.Target] SelectedItem 
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Off set from entity @p[tag=Chuz.ID.Target] Inventory[{Slot:-106b}]

# キャッチ時にチャージ0にしとく
    scoreboard players set @p[tag=Chuz.ID.Target] ChuzItems.Charge 0