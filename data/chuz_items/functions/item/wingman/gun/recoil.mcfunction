#> chuz_items:item/wingman/gun/recoil
#
# 
#
# @within function chuz_items:storage

# リコイル
    execute if entity @s[scores={ChuzItems.Recoil=27}] run tp @s ~ ~ ~ ~0.5 ~-1
    execute if entity @s[scores={ChuzItems.Recoil=26}] run tp @s ~ ~ ~ ~0.7 ~-0.7
    execute if entity @s[scores={ChuzItems.Recoil=25}] run tp @s ~ ~ ~ ~0.5 ~-0.5
    execute if entity @s[scores={ChuzItems.Recoil=24}] run tp @s ~ ~ ~ ~0.1 ~-0.05
    execute if entity @s[scores={ChuzItems.Recoil=23}] run tp @s ~ ~ ~ ~0.05 ~-0.05
    execute if entity @s[scores={ChuzItems.Recoil=22}] at @s run tp @s ~ ~ ~ ~ ~-0.025
    execute if entity @s[scores={ChuzItems.Recoil=21}] run tp @s ~ ~ ~ ~-0.5 ~1
    execute if entity @s[scores={ChuzItems.Recoil=20}] run tp @s ~ ~ ~ ~-0.7 ~0.7
    execute if entity @s[scores={ChuzItems.Recoil=19}] run tp @s ~ ~ ~ ~-0.5 ~0.5
    execute if entity @s[scores={ChuzItems.Recoil=18}] run tp @s ~ ~ ~ ~-0.1 ~0.05
    execute if entity @s[scores={ChuzItems.Recoil=17}] run tp @s ~ ~ ~ ~-0.05 ~0.05
    execute if entity @s[scores={ChuzItems.Recoil=16}] at @s run tp @s ~ ~ ~ ~ ~-0.025
    execute if entity @s[scores={ChuzItems.Recoil=15}] at @s run tp @s ~ ~ ~ ~ ~-0.025
# リコイル(小)
    execute if entity @s[scores={ChuzItems.Recoil=7}] run tp @s ~ ~ ~ ~ ~-0.5
    execute if entity @s[scores={ChuzItems.Recoil=6}] run tp @s ~ ~ ~ ~ ~-0.35
    execute if entity @s[scores={ChuzItems.Recoil=5}] run tp @s ~ ~ ~ ~ ~-0.25
    execute if entity @s[scores={ChuzItems.Recoil=4}] run tp @s ~ ~ ~ ~ ~-0.025
    execute if entity @s[scores={ChuzItems.Recoil=3}] run tp @s ~ ~ ~ ~ ~-0.025
    execute if entity @s[scores={ChuzItems.Recoil=2}] at @s run tp @s ~ ~ ~ ~ ~-0.01
    execute if entity @s[scores={ChuzItems.Recoil=1}] at @s run tp @s ~ ~ ~ ~ ~-0.01

# スコアリセット
    scoreboard players remove @s ChuzItems.Recoil 1
    scoreboard players reset @s[scores={ChuzItems.Recoil=..0}] ChuzItems.Recoil
    scoreboard players reset @s[scores={ChuzItems.Recoil=14}] ChuzItems.Recoil
