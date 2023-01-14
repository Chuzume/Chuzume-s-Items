#> chuz_items:item/shotgun/recoil/main
#
# リコイル
#
# @within function chuz_items:common/recoil/check_item

# リコイル
    execute if entity @s[scores={ChuzItems.Recoil.Shotgun=0}] run tp @s ~ ~ ~ ~ ~-2.5
    execute if entity @s[scores={ChuzItems.Recoil.Shotgun=1}] run tp @s ~ ~ ~ ~ ~-2.0
    execute if entity @s[scores={ChuzItems.Recoil.Shotgun=2}] run tp @s ~ ~ ~ ~ ~-0.3
    execute if entity @s[scores={ChuzItems.Recoil.Shotgun=3}] run tp @s ~ ~ ~ ~ ~-0.2
    execute if entity @s[scores={ChuzItems.Recoil.Shotgun=4}] run tp @s ~ ~ ~ ~ ~-0.1
    execute if entity @s[scores={ChuzItems.Recoil.Shotgun=5}] run data modify storage chuz:context RecoilSize set value [0.0f,-5.1f]
    execute if entity @s[scores={ChuzItems.Recoil.Shotgun=5}] run tag @s add yavu

# スコア増やす
    scoreboard players add @s ChuzItems.Recoil.Shotgun 1

# リセット
    tag @s[scores={ChuzItems.Recoil.Shotgun=7..}] remove ChuzItems.ActiveRecoil
    scoreboard players reset @s[scores={ChuzItems.Recoil.Shotgun=7..}] ChuzItems.Recoil.Shotgun