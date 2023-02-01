#> chuzitems:setting/griefing
#
# 
#
# @within function chuzitems:setting/

# ルール変更
    scoreboard players add $Gamerule.Griefing Chuz.Rule 1
    execute if score $Gamerule.Griefing Chuz.Rule matches 2.. run scoreboard players set $Gamerule.Griefing Chuz.Rule 0
    function chuzitems:setting/
    playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2

# 表示を消す
    gamerule sendCommandFeedback false