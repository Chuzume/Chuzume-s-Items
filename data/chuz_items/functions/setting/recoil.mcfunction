#> chuz_items:setting/recoil
#
# リコイル設定
#
# @within function chuz_items:setting/

# ルール変更
    scoreboard players add $Gamerule.Recoil Chuz.Rule 1
    execute if score $Gamerule.Recoil Chuz.Rule matches 2.. run scoreboard players set $Gamerule.Recoil Chuz.Rule 0
    function chuz_items:setting/
    playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2

# 表示を消す
    gamerule sendCommandFeedback false