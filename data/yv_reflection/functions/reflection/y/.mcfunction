#> yv_reflection:reflection/y/

# ブロックによってバウンド率を変える
    scoreboard players operation $BoundPower YvBounce.Core = @s YvBounce.BeforeVec.Y
    scoreboard players operation $BoundPower YvBounce.Core *= $50% YvBounce.Core
    #function yv_reflection:reflection/y/bound_power

# 1tick前のMotionを反転して代入                      -0.0000001
    execute store result entity @s Motion[1] double -0.00000001 run scoreboard players get $BoundPower YvBounce.Core

# X軸、Z軸の減衰を調節
    execute unless block ~ ~-.001 ~ #yv_reflection:bunker if entity @s[scores={YvBounce.BeforeVec.Y=..-2000000}] unless entity @s[scores={YvBounce.BeforeVec.X=-1..1}] store result entity @s Motion[0] double 0.00000006 run scoreboard players get @s YvBounce.BeforeVec.X
    execute unless block ~ ~-.001 ~ #yv_reflection:bunker if entity @s[scores={YvBounce.BeforeVec.Y=..-2000000}] unless entity @s[scores={YvBounce.BeforeVec.Z=-1..1}] store result entity @s Motion[2] double 0.00000006 run scoreboard players get @s YvBounce.BeforeVec.Z

# SFX
    execute if score @s[tag=!YvBounce.Stop] YvBounce.BeforeVec.Y matches 1.. positioned ~ ~.25 ~ run function yv_reflection:reflection/sound
    execute if score @s[tag=!YvBounce.Stop] YvBounce.BeforeVec.Y matches ..-1 positioned ~ ~-.001 ~ run function yv_reflection:reflection/sound