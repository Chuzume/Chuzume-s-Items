#> chuzitems:entity/projectile/ender_glaive/tick/teleport/vfx
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/teleport/player

# 演出
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1 1
    particle crit ~ ~ ~ 0 0 0 0.5 10
#    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..120]
    particle minecraft:dust_color_transition 1 0.5 1 1 1 0 1 ~ ~ ~ 0.25 0.5 0.25 0 50 force @a[distance=..120]

# カスタムパーティクル
    execute positioned ~ ~0.5 ~ run summon text_display ^ ^ ^-0.5 {billboard:"center",Tags:["Chuz.Particle"],Passengers:[{id:"minecraft:marker",data:{font:warp,color:FF00FF,frame:5}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.5f,2.5f,1f]},background:0}
