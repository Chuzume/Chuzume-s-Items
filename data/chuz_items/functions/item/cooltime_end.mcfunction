#> chuz_items:item/cooltime_end
#
# 
#
# @within function chuz_items:item/**

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# スコアリセット
    scoreboard players reset @s ChuzItems.CoolTime