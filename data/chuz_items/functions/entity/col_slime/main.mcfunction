scoreboard players add @s S.Rif_Remove 1
execute if entity @s[scores={S.Rif_Remove=2..}] at @s run tp @s ~ ~-1000 ~
kill @s[scores={S.Rif_Remove=2..}]