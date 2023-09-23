#> chuzitems:item/photon_glaive/mainhand/knowledge_book/
#
# 
#
# @within function chuzitems:player/macro/knowledge_book/mainhand

# エンティティ召喚
    execute anchored eyes positioned ^-0.2 ^-0.2 ^ run summon armor_stand ~ ~ ~ {Invulnerable:1b,DeathTime:19s,Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.PhotonGlaive","Chuz.Projectile","Chuz.Init"],Passengers:[{id:"minecraft:item_display",Tags:["ChuzItems.Model.PhotonGlaive"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20}}}]}
    #summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Invulnerable:1b,PortalCooldown:2147483647,DeathTime:19s,Tags:["ChuzItems.Projectile.PhotonGlaive","Chuz.Projectile","Chuz.Init"]}
    #execute anchored eyes positioned ^ ^ ^ run summon item_display ~ ~ ~ {Tags:["ChuzItems.Model.PhotonGlaive","Chuz.Init"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20}}}
    #execute if entity @s[scores={ThWe_Throw=1..}] at @s rotated 0 0 anchored eyes run summon armor_stand ^ ^-0.75 ^ {Small:1b,Invisible:1b,Tags:["ThWe_Model"],PortalCooldown:2147483647,Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:14}}]}

# 拡散用マーカー召喚
    execute anchored eyes run summon marker ^ ^ ^20 {Tags:["SpreadMarker"]}

# Init処理
    execute as @e[type=armor_stand,tag=ChuzItems.Projectile.PhotonGlaive,tag=Chuz.Init,sort=nearest,limit=1] at @s run function chuzitems:item/photon_glaive/mainhand/knowledge_book/charge0/init
    #execute as @e[type=item_display,tag=ChuzItems.Model.PhotonGlaive,tag=Chuz.Init,sort=nearest,limit=1] at @s run function chuzitems:item/photon_glaive/mainhand/knowledge_book/mode_init

# サウンド
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0
