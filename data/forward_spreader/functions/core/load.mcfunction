#> forward_spreader:core/load
#
# 初期化処理
#

forceload add 0 0

#> Process used UUIDEntity
# @internal
#alias uuid Process 0-0-0-0-a
execute unless entity 0-0-0-0-a run summon marker 0 0 0 {UUID:[I;0,0,0,10]}

#> Process used Objective
# @internal
scoreboard objectives add ForwardSpreader dummy

#> Constant values
# @internal
    #declare score_holder $2
    #declare score_holder $10000
    #declare score_holder $31743
    #declare score_holder $65535
scoreboard players set $2 ForwardSpreader 2
scoreboard players set $10000 ForwardSpreader 10000
scoreboard players set $31743 ForwardSpreader 31743
scoreboard players set $65535 ForwardSpreader 65535

# init random number generator
    execute unless data storage forward_spreader: {RNGInit:true} run function forward_spreader:core/random/init