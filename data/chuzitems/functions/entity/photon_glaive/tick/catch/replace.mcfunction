#> chuzitems:entity/photon_glaive/tick/catch/replace
#
# 箱周りの処理
#
# @within function chuzitems:entity/photon_glaive/tick/catch/

# 今の手持ちをシュルカーボックスに放り込む
    data modify block 100001 -64 100000 Items set value []
    # メインハンド
        execute if entity @s[tag=!ChuzItems.Projectile.PhotonGlaive.Off] run data modify block 100001 -64 100000 Items append from storage chuz:context Item.Mainhand
    # オフハンド
        data modify storage chuz:context Item.Offhand set from storage chuz:context Item.Inventory[{Slot:-106b}]
        data modify storage chuz:context Item.Offhand merge value {Slot:0b}
        execute if entity @s[tag=ChuzItems.Projectile.PhotonGlaive.Off] in overworld run data modify block 100001 -64 100000 Items append from storage chuz:context Item.Offhand
        data remove storage chuz:context Item.Offhand
# 足元に今の手持ちを出す
    loot spawn 100001 -64 100000 mine 100001 -64 100000 debug_stick
    execute positioned 100001 -64 100000 run tp @e[type=item,sort=nearest,limit=1] @p[gamemode=!creative,tag=Chuz.ID.Target]
    execute at @p[gamemode=!creative,tag=Chuz.ID.Target] run data modify entity @e[type=item,sort=nearest,limit=1] PickupDelay set value 0
