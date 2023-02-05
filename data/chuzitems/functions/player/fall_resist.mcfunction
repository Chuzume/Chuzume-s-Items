#> chuzitems:player/fall_resist
#
# 
#
# @within function chuzitems:**

# 3tickに一度落下時間をリセット
    scoreboard players add @s ChuzItems.FallResist 1
    execute if entity @s[scores={ChuzItems.FallResist=3..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:28,Amplifier:0b,Duration:2,ShowParticles:0b}]}
    scoreboard players reset @s[scores={ChuzItems.FallResist=3..}] ChuzItems.FallResist
