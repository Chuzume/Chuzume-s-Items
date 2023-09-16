#> chuzitems:item/testitem/mainhand/standby/
#
# 
#
# @within function chuzitems:player/macro/mainhand


# クリック判定召喚
    #execute anchored eyes positioned ^ ^ ^ run function chuzitems:player/click_detection/main

# タグによってサウンドを鳴らす
    #execute if entity @s[tag=Chuz.Click.Left] run function chuzitems:item/testitem/mainhand/standby/left
    #execute if entity @s[tag=Chuz.Click.Left] run say 俺は左クリックを出したぞ！

    #execute if entity @s[tag=Chuz.Click.Right] run function chuzitems:item/testitem/mainhand/standby/right
    #execute if entity @s[tag=Chuz.Click.Right] run say カチッ…これは右クリック！

# パーティクル
    #execute anchored eyes run particle dust 1 1 1 0.5 ^ ^ ^1 0 0 0 0 1

 # ステップ
    execute if score @s ChuzItems.FungusStick matches 0.. run function chuzitems:item/testitem/mainhand/standby/left