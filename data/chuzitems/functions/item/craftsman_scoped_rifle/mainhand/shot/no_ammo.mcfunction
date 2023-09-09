#> chuzitems:item/craftsman_scoped_rifle/shot/no_ammo
#
# 残弾0
#
# @within function chuzitems:item/craftsman_scoped_rifle/main

# 音
    execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1
    execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1.2

# 煙
    # 腰だめ
        execute if entity @s[tag=!Chuz.UsingSpyglass] run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5

    # スコープ！
        execute if entity @s[tag=Chuz.UsingSpyglass] run particle smoke ^ ^ ^0.7 0 0 0 0.05 2