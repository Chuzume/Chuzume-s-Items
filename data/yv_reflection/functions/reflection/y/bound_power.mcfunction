#> yv_reflection:reflection/y/bound_power


# グリーン
    execute if score $BoundPower YvBounce.Core = @s YvBounce.BeforeVec.Y if block ~ ~-.001 ~ #yv_reflection:green run scoreboard players operation $BoundPower YvBounce.Core *= $50% YvBounce.Core

# バンカー
    execute if score $BoundPower YvBounce.Core = @s YvBounce.BeforeVec.Y if block ~ ~-.001 ~ #yv_reflection:bunker run scoreboard players operation $BoundPower YvBounce.Core *= $20% YvBounce.Core

# ホール
    execute if score $BoundPower YvBounce.Core = @s YvBounce.BeforeVec.Y if block ~ ~-.001 ~ cauldron run scoreboard players operation $BoundPower YvBounce.Core *= $0% YvBounce.Core












# デフォ値
    execute if score $BoundPower YvBounce.Core = @s YvBounce.BeforeVec.Y run scoreboard players operation $BoundPower YvBounce.Core *= $80% YvBounce.Core
