#> chuzitems:item/weapon/testaxe/main
#
# 
#
# @within function chuzitems:player/tick

#> テスト用
# @private
    #declare tag SneakTest


# クリック判定召喚
    function chuzitems:player/click_detection/main

# タグによってサウンドを鳴らす
    execute if entity @s[tag=Chuz.Click.Left] run playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.7
    #execute if entity @s[tag=Chuz.Click.Left] run say 俺は左クリックを出したぞ！

    execute if entity @s[tag=Chuz.Click.Right] run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
    #execute if entity @s[tag=Chuz.Click.Right] run say カチッ…これは右クリック！

# パーティクル
    #execute anchored eyes run particle dust 1 1 1 0.5 ^ ^ ^1 0 0 0 0 1

