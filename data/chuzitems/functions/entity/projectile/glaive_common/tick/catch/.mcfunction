#> chuzitems:entity/photon_glaive/tick/catch/
#
# キャッチ
#
# @within function
#   chuzitems:entity/photon_glaive/tick/move/
#   chuzitems:entity/photon_glaive/tick/tp_return/warp_catch
#   chuzitems:entity/photon_glaive/tick/tp_return/
#   chuzitems:entity/photon_glaive/tick/catch/death

# 今の手持ちをストレージに放り込む
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] as @p[gamemode=!creative,tag=Chuz.ID.Target] run function chuzitems:entity/photon_glaive/tick/catch/get_data/mainhand
    # オフハンド
        execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive.Off] as @p[gamemode=!creative,tag=Chuz.ID.Target] run function chuzitems:entity/photon_glaive/tick/catch/get_data/offhand

# ブーメランを与える
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.mainhand loot chuzitems:item/photon_glaive
    # オフハンド
        execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.offhand loot chuzitems:item/photon_glaive

# さっきの手持ちをgiveする
    execute as @p[gamemode=!creative,tag=Chuz.ID.Target] if data storage chuz:context Give.tag run function chuzitems:entity/projectile/glaive_common/tick/catch/give with storage chuz:context Give
    execute as @p[gamemode=!creative,tag=Chuz.ID.Target] unless data storage chuz:context Give.tag run function chuzitems:entity/projectile/glaive_common/tick/catch/give_nodata with storage chuz:context Give

# キャッチ時の手元データを即時にブーメランにしとく
    execute as @p[tag=Chuz.ID.Target] run function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Main set from entity @p[tag=Chuz.ID.Target] SelectedItem 
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ThrownItem.Off set from entity @p[tag=Chuz.ID.Target] Inventory[{Slot:-106b}]

# キャッチ時にチャージ0にしとく
    scoreboard players set @p[tag=Chuz.ID.Target] ChuzItems.Charge 0

# 演出
    playsound minecraft:block.iron_door.close neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1.5 1
    particle crit ~ ~ ~ 0 0 0 0.5 10

# キル
    function chuzitems:entity/photon_glaive/tick/kill