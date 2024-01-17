#> chuzitems:entity/projectile/ender_glaive/tick/catch/vfx
#
# 
#
# @within function
#   chuzitems:entity/projectile/ender_glaive/tick/catch/
#   chuzitems:entity/projectile/ender_glaive/tick/teleport/

# 演出
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1 1
    playsound minecraft:block.iron_door.close neutral @a ~ ~ ~ 1.5 2
    playsound minecraft:item.flintandsteel.use neutral @a ~ ~ ~ 1.5 1
    particle crit ~ ~ ~ 0 0 0 0.5 10

