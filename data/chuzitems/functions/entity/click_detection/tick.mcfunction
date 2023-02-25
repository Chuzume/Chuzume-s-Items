#> chuzitems:entity/click_detection/tick
#
# 
#
# @within function chuzitems:tick

# スコア加算して消す
    scoreboard players add @s ChuzItems.Tick 1
    kill @s[scores={ChuzItems.Tick=2..}]