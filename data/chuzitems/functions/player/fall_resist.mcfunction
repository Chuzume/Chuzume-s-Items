#> chuzitems:player/fall_resist
#
# 
#
# @within function chuzitems:**

# 4tickに一度落下時間をリセット
    scoreboard players add @s ChuzItems.FallResist 1
    execute if entity @s[scores={ChuzItems.FallResist=4..}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:slow_falling,amplifier:0b,duration:2,show_particles:0b}]}
    scoreboard players reset @s[scores={ChuzItems.FallResist=4..}] ChuzItems.FallResist
