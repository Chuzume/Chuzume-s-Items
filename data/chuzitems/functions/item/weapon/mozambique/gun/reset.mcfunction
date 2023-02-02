#> chuzitems:item/weapon/mozambique/gun/reset
#
# ディレイ0になった際のリセット処理 
#
# @within function chuzitems:item/weapon/mozambique/gun/

# 射撃のポーズ戻す
    tag @s remove ChuzItems.Shot.ADS
    tag @s remove ChuzItems.Shot.Normal

# スコアリセット
    scoreboard players reset @s ChuzItems.CoolTime