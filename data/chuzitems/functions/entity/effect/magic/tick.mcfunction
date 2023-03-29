#> chuzitems:entity/effect/magic/tick
#
# 
#
# @within function chuzitems:tick

# Tick加算
    scoreboard players remove @s ChuzItems.Tick 1

#
    execute if score @s ChuzItems.Tick matches 8 run data merge entity @s {start_interpolation:-1,interpolation_duration:8,transformation:{scale:[0f,0f,0f]}}

# 
    kill @s[scores={ChuzItems.Tick=..0}]