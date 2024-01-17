#> chuzitems:item/photon_glaive/offhand/knowledge_book/
#
# 
#
# @within function chuzitems:player/macro/knowledge_book/offhand

# おいらが使用者だよ
    tag @s add This

# エンティティ召喚
    execute anchored eyes positioned ^0.3 ^-0.2 ^ run summon armor_stand ~ ~ ~ {Invulnerable:1b,DeathTime:19s,Marker:1b,Invisible:1b,Tags:["ChuzItems.Projectile.PhotonGlaive","ChuzItems.Projectile.Glaive.Off","Chuz.Projectile","Chuz.Init"],Passengers:[{id:"minecraft:item_display",Tags:["ChuzItems.Model.Glaive","ChuzItems.Model.Glaive.Off"],teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.75f,0.75f,0.75f]},item:{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:20}}}]}

# 残りは左右で共通の処理
    function chuzitems:item/photon_glaive/common/throw