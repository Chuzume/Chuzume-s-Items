#> chuzitems:entity/projectile/shooting_arrow/set_fire
#
# 
#
damage @s 5
summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:resistance",amplifier:4b,duration:1,show_particles:0b}]}
summon minecraft:small_fireball ~ ~1 ~0.60000002384187 {Motion:[0.0,0.0,-10.0]}
stopsound @s player minecraft:entity.generic.hurt