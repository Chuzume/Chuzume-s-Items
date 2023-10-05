#> chuzitems:entity/photon_glaive/tick/sound
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/

# 飛距離依存サウンド
    execute if score @s Chuz.Range matches 70..80 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 1.5
    execute if score @s Chuz.Range matches 60..70 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 1.4
    execute if score @s Chuz.Range matches 50..60 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 1.3
    execute if score @s Chuz.Range matches 40..50 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 1.2
    execute if score @s Chuz.Range matches 30..40 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 1.1
    execute if score @s Chuz.Range matches 20..30 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 1.0
    execute if score @s Chuz.Range matches 10..20 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.9
    execute if score @s Chuz.Range matches 0..10 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.8
    execute if score @s Chuz.Range matches -10..0 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.7
    execute if score @s Chuz.Range matches -20..-10 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.6
    execute if score @s Chuz.Range matches ..-20 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.5
