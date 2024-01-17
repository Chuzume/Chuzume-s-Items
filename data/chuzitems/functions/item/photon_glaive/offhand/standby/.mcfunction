#> chuzitems:item/photon_glaive/offhand/standby/
#
# 
#
# @within function chuzitems:player/macro/offhand

# メイン処理、ただしメインハンドで優先処理が働いていない場合
    execute if entity @s[tag=!Chuz.PreventRun] run function chuzitems:item/photon_glaive/common/main