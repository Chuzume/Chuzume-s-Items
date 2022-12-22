scoreboard players add @s ChuzItems.Remove 1
execute if entity @s[scores={ChuzItems.Remove=2..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={ChuzItems.Remove=2..}]