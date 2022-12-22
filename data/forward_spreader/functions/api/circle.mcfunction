#> forward_spreader:api/circle
#
# 実行entityを前方の円状範囲内のランダムな座標に移動させます
#
# @input
#   as entity
#   position
#   rotation
#   storage forward_spreader:
#       Distance : float
#       Spread : float
# @public

scoreboard players set $CircleRandomizerMode ForwardSpreader 1
function forward_spreader:core/
scoreboard players reset $CircleRandomizerMode ForwardSpreader