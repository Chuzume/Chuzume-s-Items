#> chuzitems:entity/photon_glaive/tick/catch
#
# キャッチ
#
# @within function chuzitems:entity/photon_glaive/tick/return

# 今の手持ちをシュルカーボックスに放り込む
    data modify block 100001 -64 100000 Items set value []
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] run data modify block 100001 -64 100000 Items append from storage chuz:context Item.Mainhand
    # オフハンド
        data modify storage chuz:context Item.Offhand set from storage chuz:context Item.Inventory[{Slot:-106b}]
        data modify storage chuz:context Item.Offhand merge value {Slot:0b}
        execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive.Off] run data modify block 100001 -64 100000 Items append from storage chuz:context Item.Offhand
        data remove storage chuz:context Item.Offhand
# 足元に今の手持ちを出す
    execute at @p[gamemode=!creative,tag=Chuz.ID.Target] run loot spawn ~ ~ ~ mine 100001 -64 100000 debug_stick
    
# 即座にデータ変更してすぐ拾う
    execute at @p[gamemode=!creative,tag=Chuz.ID.Target] run data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0
# ブーメランを与える
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.mainhand loot chuzitems:item/photon_glaive/
    # オフハンド
        execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive.Off] run loot replace entity @p[gamemode=!creative,tag=Chuz.ID.Target] weapon.offhand loot chuzitems:item/photon_glaive/
# キャッチ時の手元データを即時にブーメランにしとく
    data modify storage chuz:context ThrownItem.Main set from entity @p[gamemode=!creative,tag=Chuz.ID.Target] SelectedItem 
    data modify storage chuz:context ThrownItem.Off set from entity @p[gamemode=!creative,tag=Chuz.ID.Target] Inventory[{Slot:-106b}]

# 演出
    playsound minecraft:block.iron_door.close neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1.5 1
    particle crit ~ ~ ~ 0 0 0 0.5 10

# キル
    function chuzitems:entity/photon_glaive/tick/kill