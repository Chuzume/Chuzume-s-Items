#> chuzitems:entity/projectile/ricochet_glaive/tick/hit/ricochet/vfx
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/hit/ricochet/

# 演出
    playsound chuzume:blaster3 neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.hurt neutral @a ~ ~ ~ 1 2

# カスタムパーティクル
    execute at @s run summon text_display ~ ~ ~ {billboard:"center",Tags:["Chuz.Particle"],Passengers:[{id:"minecraft:marker",data:{font:discharge,color:c9c9c9,frame:5}}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},background:0}
