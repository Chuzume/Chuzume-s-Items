#> chuzitems:item/gunblade/ranged/recoil/main
#
# リコイル
#
# @within function chuzitems:common/recoil/check_item

# リコイル
    execute if entity @s[scores={ChuzItems.Recoil.Gunblade=0}] run tp @s ~ ~ ~ ~ ~-2.5
    execute if entity @s[scores={ChuzItems.Recoil.Gunblade=1}] run tp @s ~ ~ ~ ~ ~-2.0
    execute if entity @s[scores={ChuzItems.Recoil.Gunblade=2}] run tp @s ~ ~ ~ ~ ~-0.3
    execute if entity @s[scores={ChuzItems.Recoil.Gunblade=3}] run tp @s ~ ~ ~ ~ ~-0.2
    execute if entity @s[scores={ChuzItems.Recoil.Gunblade=4}] run tp @s ~ ~ ~ ~ ~-0.1
    execute if entity @s[scores={ChuzItems.Recoil.Gunblade=5..}] at @s run function chuzitems:item/gunblade/ranged/recoil/start_return

# スコア増やす
    scoreboard players add @s ChuzItems.Recoil.Gunblade 1