#> yv_reflection:reflection/x

# 1tick前のMotionを反転して代入                      -0.0000001
    execute store result entity @s Motion[0] double -0.0000001 run scoreboard players get @s YvBounce.BeforeVec.X

# SFX
    execute if score @s YvBounce.BeforeVec.X matches 1.. positioned ~.13 ~ ~ run function yv_reflection:reflection/sound
    execute if score @s YvBounce.BeforeVec.X matches ..-1 positioned ~-.13 ~ ~ run function yv_reflection:reflection/sound