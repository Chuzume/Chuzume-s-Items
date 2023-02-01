#>yv_reflection:load
#
# 
#
# @within function chuzitems:load

#> スコア定義
    scoreboard objectives add YvBounce.Core dummy
    scoreboard objectives add YvBounce.BeforeVec.X dummy
    scoreboard objectives add YvBounce.BeforeVec.Y dummy
    scoreboard objectives add YvBounce.BeforeVec.Z dummy

    scoreboard objectives add YvBounce.Before.Pos.X dummy
    scoreboard objectives add YvBounce.Before.Pos.Y dummy
    scoreboard objectives add YvBounce.Before.Pos.Z dummy

    scoreboard players set $TempX YvBounce.Core 0
    scoreboard players set $TempY YvBounce.Core 0
    scoreboard players set $TempZ YvBounce.Core 0

    scoreboard players set $BoundPower YvBounce.Core 0

    scoreboard players set $100% YvBounce.Core 10
    scoreboard players set $90% YvBounce.Core 9
    scoreboard players set $80% YvBounce.Core 8
    scoreboard players set $70% YvBounce.Core 7
    scoreboard players set $60% YvBounce.Core 6
    scoreboard players set $50% YvBounce.Core 5
    scoreboard players set $40% YvBounce.Core 4
    scoreboard players set $30% YvBounce.Core 3
    scoreboard players set $20% YvBounce.Core 2
    scoreboard players set $10% YvBounce.Core 1
    scoreboard players set $0% YvBounce.Core 0

#> ストレージ定義
    data merge storage yv:reflection {Temp:{Motion:[0d,0d,0d], VecX:0d, VecY:0d, VecZ:0d, Pos:[0d,0d,0d], PosX:0d, PosY:0d, PosZ:0d}}