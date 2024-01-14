#> chuzitems:entity/projectile/ender_glaive/tick/catch/vfx
#
# 
#
# @within function
#   chuzitems:entity/projectile/ender_glaive/tick/recursion
#   chuzitems:entity/projectile/ender_glaive/tick/teleport/player

# 演出
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1.5 1
    particle crit ~ ~ ~ 0 0 0 0.5 10
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0 force @a[distance=..120]
    particle minecraft:dust_color_transition 1 0.5 1 1 1 0 1 ~ ~ ~ 0.25 0.5 0.25 0 50 force @a[distance=..120]