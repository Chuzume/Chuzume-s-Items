#> chuzitems:item/photon_glaive/offhand/knowledge_book/
#
# 
#
# @within function chuzitems:player/macro/knowledge_book/offhand

# おいらが使用者だよ
    tag @s add This

# エンティティ召喚
    execute anchored eyes positioned ^0.3 ^-0.2 ^ run summon armor_stand ~ ~ ~ {Invulnerable:1b,DeathTime:19s,Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.PhotonGlaive","ChuzItems.Projectile.PhotonGlaive.Off","Chuz.Projectile","Chuz.Init"],Passengers:[{id:"minecraft:item_display",Tags:["ChuzItems.Model.PhotonGlaive","ChuzItems.Model.PhotonGlaive.Off"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20}}}]}

# 拡散用マーカー召喚
    execute anchored eyes run summon marker ^ ^ ^30 {Tags:["SpreadMarker"]}

# Init処理
    execute as @e[type=armor_stand,tag=ChuzItems.Projectile.PhotonGlaive,tag=Chuz.Init,sort=nearest,limit=1] at @s run function chuzitems:item/photon_glaive/common/init

# サウンド
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 2 0.5
    playsound minecraft:entity.witch.throw player @a ~ ~ ~ 2 0.7

# チャージ値リセット
    scoreboard players reset @s ChuzItems.Charge

# 使用者解除
    tag @s remove This