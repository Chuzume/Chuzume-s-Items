
# 音
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1.2

# 煙
    # 腰だめ
        execute if entity @s[tag=!Chuz.UsingSpyglass] anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5

    # スコープ！
        execute if entity @s[tag=Chuz.UsingSpyglass] anchored eyes run particle smoke ^ ^ ^0.7 0 0 0 0.05 2