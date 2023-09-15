#> chuzitems:item/craftsman_gunblade/mainhand/melee/charge_attack/no_ammo
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/melee/

# 音
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1
    execute positioned ^ ^-0.4 ^1.0 run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 2 1.2

# 煙
    # 腰だめ
        execute run particle smoke ^-0.25 ^ ^0.7 0 0 0 0.05 5

# リセット
    scoreboard players reset @s ChuzItems.Charge
    scoreboard players remove @s ChuzItems.BurstCount 1
    tag @s remove This

# 更新
    execute in overworld run function chuzitems:item/replaceitem