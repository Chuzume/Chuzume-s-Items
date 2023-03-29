#> chuzitems:entity/effect/lockon_marker/tick
#
# 
#
# @within function chuzitems:tick

# Tick加算
    scoreboard players remove @s ChuzItems.Tick 1
# 
    kill @s[scores={ChuzItems.Tick=..0}]