#> chuzitems:item/craftsman_scoped_rifle/mainhand/standby/shot/no_ammo
#
# 
#
# @within function chuzitems:item/craftsman_scoped_rifle/mainhand/standby/


# 音
    execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1
    execute positioned ^ ^-0.2 ^0.5 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1.2

# 煙
    # 腰だめ
        execute if entity @s[tag=!Chuz.Using.Spyglass] run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5

    # スコープ！
        execute if entity @s[tag=Chuz.Using.Spyglass] run particle smoke ^ ^ ^0.7 0 0 0 0.05 2