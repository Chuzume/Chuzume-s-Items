#> chuzitems:item/weapon/grenade_launcher/gun/shot/summon
#
# 
#
# @within function chuzitems:item/weapon/grenade_launcher/gun/shot/**

# 弾を召喚
    particle smoke ^-0.25 ^-0.2 ^0.7 0 0 0 0.05 10 force @a[distance=..20]
    summon item ^-0.25 ^ ^ {Health:9999s,Fire:2s,PickupDelay:32767s,Item:{id:"minecraft:chain_command_block",Count:1b,tag:{display:{Name:'{"text":"Grenade Bullet","color":"white","italic":false}',Lore:['{"text":" "}','{"text":"ホッパーに吸い込まれたグレネード。","color":"gray","italic":false}','{"text":"どういうわけか弾薬として機能する。","color":"gray","italic":false}']},CustomModelData:4,ChuzData:{ItemID:Explosive_Cartridge}}},Tags:["Chuz.Projectile",ChuzItems.Projectile.Grenade,"Chuz.UUIDAttack","Chuz.Init"]}
    execute at @s run function chuzitems:item/weapon/grenade_launcher/gun/shot/spread