#> chuzitems:entity/photon_glaive/tick/sound
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/

# 通常サウンド
#   playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.6
#   playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1 0.8
#   playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1 2

# 距離依存サウンド（低音→高音）
    #execute if entity @p[tag=Chuz.ID.Target,distance=..3] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.5
    #execute if entity @p[tag=Chuz.ID.Target,distance=3..6] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.7
    #execute if entity @p[tag=Chuz.ID.Target,distance=6..9] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.9
    #execute if entity @p[tag=Chuz.ID.Target,distance=9..12] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.1
    #execute if entity @p[tag=Chuz.ID.Target,distance=12..15] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.3
    #execute if entity @p[tag=Chuz.ID.Target,distance=15..] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.5

# 距離依存サウンド(高音→低音)
    #execute if entity @p[tag=Chuz.ID.Target,distance=..3] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.5
    #execute if entity @p[tag=Chuz.ID.Target,distance=3..6] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.3
    #execute if entity @p[tag=Chuz.ID.Target,distance=6..9] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.1
    #execute if entity @p[tag=Chuz.ID.Target,distance=9..12] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.9
    #execute if entity @p[tag=Chuz.ID.Target,distance=12..15] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.7
    #execute if entity @p[tag=Chuz.ID.Target,distance=15..] run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.5

# 飛距離依存サウンド
    execute if score @s Chuz.Range matches 70..80 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.5
    execute if score @s Chuz.Range matches 60..70 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.4
    execute if score @s Chuz.Range matches 50..60 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.3
    execute if score @s Chuz.Range matches 40..50 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.2
    execute if score @s Chuz.Range matches 30..40 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.1
    execute if score @s Chuz.Range matches 20..30 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 1.0
    execute if score @s Chuz.Range matches 10..20 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.9
    execute if score @s Chuz.Range matches 0..10 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.8
    execute if score @s Chuz.Range matches -10..0 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.7
    execute if score @s Chuz.Range matches -20..-10 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.6
    execute if score @s Chuz.Range matches ..-20 run playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 1.5 0.5
