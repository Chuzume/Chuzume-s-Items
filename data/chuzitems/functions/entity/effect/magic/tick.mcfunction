#> chuzitems:entity/effect/magic/tick
#
# 
#
# @within function chuzitems:tick

# Tick加算
    scoreboard players remove @s ChuzItems.Tick 1

#
    execute if score @s ChuzItems.Tick matches 9 run data merge entity @s {start_interpolation:-1,interpolation_duration:3,transformation:{scale:[2f,2f,0f]}}
    execute if score @s ChuzItems.Tick matches 6 run data merge entity @s {start_interpolation:-1,interpolation_duration:3,transformation:{scale:[0f,0f,0f]}}

# 
    kill @s[scores={ChuzItems.Tick=..0}]