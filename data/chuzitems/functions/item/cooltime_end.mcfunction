#> chuzitems:item/cooltime_end
#
# 
#
# @within function chuzitems:player/tick

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# スコアリセット
    scoreboard players reset @s ChuzItems.CoolTime