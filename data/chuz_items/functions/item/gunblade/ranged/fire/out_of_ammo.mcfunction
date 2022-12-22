
# 音
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1
    playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1.2

# 煙
    # 腰だめ
        execute anchored eyes run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5

# リセット
    scoreboard players reset @s ChuzItems.Charge
    scoreboard players remove @s ChuzItems.Burst 1
    tag @s remove Chuz.This

# 更新
    function chuz_items:item/replaceitem