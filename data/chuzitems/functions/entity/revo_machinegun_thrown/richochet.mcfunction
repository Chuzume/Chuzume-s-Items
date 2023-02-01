#> chuzitems:entity/revo_machinegun_thrown/richochet
#
# 
#
# @within function chuzitems:entity/revo_machinegun_thrown/tick


# X軸
    execute if entity @s[tag=Col_Hit_X] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]

# Y軸 
    execute if entity @s[tag=Col_Hit_Y] store result entity @s Rotation[1] float -1 run data get entity @s Rotation[1]


# Z軸
    tag @s[tag=Col_Hit_Z] add Chuz.HitWall
    execute if entity @s[tag=Col_Hit_Z] store result entity @s Rotation[0] float -1 run data get entity @s Rotation[0]
    execute if entity @s[tag=Col_Hit_Z] at @s run tp @s ~ ~ ~ ~180 ~
    execute if entity @s[tag=Col_Hit_Z] run function glaivery:move
    tag @s[tag=Col_Hit_Z] remove Col_Hit_Z