#> chuzitems:entity/photon_glaive/tick/catch/
#
# キャッチ
#
# @within function
#   chuzitems:entity/photon_glaive/tick/move/
#   chuzitems:entity/photon_glaive/tick/tp_return/warp_catch
#   chuzitems:entity/photon_glaive/tick/tp_return/

# 今の手持ちをシュルカーボックスに放り込む
    execute in overworld run function chuzitems:entity/photon_glaive/tick/catch/replace

# ブーメランを与える
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.mainhand loot chuzitems:item/photon_glaive
    # オフハンド
        execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.offhand loot chuzitems:item/photon_glaive

# キャッチ時の手元データを即時にブーメランにしとく
    data modify storage chuz:context ThrownItem.Main set from entity @p[tag=Chuz.ID.Target] SelectedItem 
    data modify storage chuz:context ThrownItem.Off set from entity @p[tag=Chuz.ID.Target] Inventory[{Slot:-106b}]
    tag @p[tag=Chuz.ID.Target] add Chuz.AlreadySetData

# キャッチ時にチャージ0にしとく
    scoreboard players set @p[tag=Chuz.ID.Target] ChuzItems.Charge 0

# 演出
    playsound minecraft:block.iron_door.close neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1.5 1
    particle crit ~ ~ ~ 0 0 0 0.5 10

# キル
    function chuzitems:entity/photon_glaive/tick/kill