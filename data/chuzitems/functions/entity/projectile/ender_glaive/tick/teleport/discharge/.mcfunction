#> chuzitems:entity/projectile/ender_glaive/tick/teleport/discharge/
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/teleport/

# パーティクル
    #execute rotated 0 0 run function chuzitems:entity/projectile/photon_glaive/tick/quick_return/discharge_shape
    particle dust_color_transition 1 0.3 1 2 1 1 1 ~ ~ ~ 1.5 1.5 1.5 0 50 force @a[distance=..30]

# カスタムパーティクル
    summon text_display ~ ~ ~ {billboard:"center",Tags:["Chuz.Particle"],Passengers:[{id:"minecraft:marker",data:{font:discharge,color:ee37ff,frame:5}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[10f,10f,1f]},brightness:{sky:15,block:15},background:0}

# サウンド
    playsound chuzume:blaster1 neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 2 1.3

# ダメージ
    execute as @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,distance=..3] run damage @s 10 minecraft:player_attack by @p[tag=Chuz.ID.Target]