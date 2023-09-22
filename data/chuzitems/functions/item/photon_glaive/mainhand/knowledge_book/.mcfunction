#> chuzitems:item/photon_glaive/mainhand/knowledge_book/
#
# 
#
# @within function chuzitems:player/macro/knowledge_book/mainhand

# エンティティ召喚
    #execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~ ~ {Invulnerable:1b,PortalCooldown:2147483647,DeathTime:19s,Tags:["ChuzItems.Projectile.PhotonGlaive","Chuz.Projectile","Chuz.Init"]}
    execute anchored eyes positioned ^ ^ ^ run summon pig ~ ~ ~ {Invulnerable:1b,Silent:1b,DeathTime:19s,Age:-2147483647,Tags:["ChuzItems.Projectile.PhotonGlaive","Chuz.Projectile","Chuz.Init"]}
    execute anchored eyes positioned ^ ^ ^ run summon pig ~ ~ ~ {Invulnerable:1b,Silent:1b,DeathTime:19s,Age:-2147483647,Tags:["ChuzItems.Projectile.PhotonGlaive","Chuz.Projectile","Chuz.Init"]}

    #execute if entity @s[scores={ThWe_Throw=1..}] at @s rotated 0 0 anchored eyes run summon armor_stand ^ ^-0.75 ^ {Small:1b,Invisible:1b,Tags:["ThWe_Model"],PortalCooldown:2147483647,Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:14}}]}

# Init処理
    execute as @e[type=armor_stand,tag=ChuzItems.Projectile.PhotonGlaive,tag=Chuz.Init,sort=nearest,limit=1] at @s run function chuzitems:entity/photon_glaive/init

# サウンド
    playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0
