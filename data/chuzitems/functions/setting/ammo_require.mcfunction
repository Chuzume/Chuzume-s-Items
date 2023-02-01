#> chuzitems:setting/ammo_require
#
# 
#
# @within function chuzitems:setting/

# ルール変更
    scoreboard players add $Gamerule.AmmoRequire Chuz.Rule 1
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 2.. run scoreboard players set $Gamerule.AmmoRequire Chuz.Rule 0
    function chuzitems:setting/
    playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2

# 表示を消す
    gamerule sendCommandFeedback false