#> chuzitems:player/cooltime_end
#
# 
#
# @within function chuzitems:player/tick

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# 色々リセットする
    function #chuzitems:item/reset

# スコアリセット
    scoreboard players reset @s ChuzItems.CoolTime