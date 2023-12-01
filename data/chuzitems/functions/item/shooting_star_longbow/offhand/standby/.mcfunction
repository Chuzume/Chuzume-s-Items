#> chuzitems:item/shooting_star_longbow/offhand/standby/
#
# 
#
# @within function chuzitems:player/macro/offhand

# メイン処理、ただしメインハンドで優先処理が働いていない場合
    execute if entity @s[tag=!Chuz.PreventRun] run function chuzitems:item/shooting_star_longbow/common/main