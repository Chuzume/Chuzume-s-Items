#> forward_spreader:core/random/
#
# 0-65534の乱数を返します。
#
# @output result score uShort
# @within function forward_spreader:core/randomizer

scoreboard players operation $Random.Base ForwardSpreader *= $31743 ForwardSpreader
scoreboard players operation $Random.Base ForwardSpreader += $Random.Carry ForwardSpreader
scoreboard players operation $Random.Carry ForwardSpreader = $Random.Base ForwardSpreader
scoreboard players operation $Random.Carry ForwardSpreader /= $65535 ForwardSpreader
scoreboard players operation $Random.Base ForwardSpreader %= $65535 ForwardSpreader

scoreboard players get $Random.Base ForwardSpreader