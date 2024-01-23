#> chuzitems:entity/projectile/ricochet_glaive/tick/discharge/
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/hit_wall

# パーティクル
    #execute rotated 0 0 run function chuzitems:entity/projectile/ricochet_glaive/tick/discharge/shape
    particle dust_color_transition 0.5 1 0.5 1.5 1 1 1 ~ ~ ~ 1 1 1 0 50 force @a[distance=..30]

# カスタムパーティクル
    summon text_display ~ ~ ~ {billboard:"center",Tags:["Chuz.Particle"],Passengers:[{id:"minecraft:marker",data:{font:discharge,color:66FF37,frame:5}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[6f,6f,6f]},brightness:{sky:15,block:15},background:0}

# サウンド
    #playsound chuzume:blaster1 neutral @a ~ ~ ~ 1 2
    playsound chuzume:blaster2 neutral @a ~ ~ ~ 1 2
    #playsound minecraft:block.respawn_anchor.deplete neutral @a ~ ~ ~ 1 2

# ダメージ
    execute as @e[type=!#chuzitems:unhurtable,tag=!Chuz.ID.Target,distance=..2] run damage @s 10 minecraft:player_attack by @p[tag=Chuz.ID.Target]