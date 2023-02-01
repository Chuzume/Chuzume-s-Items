#> yv_reflection:rolling

# 1tick前のMotionを反転して代入
    execute unless block ~ ~-.001 ~ #chuzitems:no_collision unless entity @s[scores={YvBounce.BeforeVec.X=-19000..19000}] unless data storage yv:reflection Temp{VecX:0.0d} store result entity @s Motion[0] double 0.00000007 run scoreboard players get @s YvBounce.BeforeVec.X
    execute unless block ~ ~-.001 ~ #chuzitems:no_collision unless entity @s[scores={YvBounce.BeforeVec.Z=-19000..19000}] unless data storage yv:reflection Temp{VecZ:0.0d} store result entity @s Motion[2] double 0.00000007 run scoreboard players get @s YvBounce.BeforeVec.Z