#> chuzitems:entity/photon_glaive/init
#
# 
#
# @within function chuzitems:item/photon_glaive/mainhand/knowledge_book/

## お願いOhMyDat!
    function oh_my_dat:please

# 向き設定したあとマーカーを消す
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~-0.3 ~ ~ ~
    kill @e[type=marker,tag=SpreadMarker,distance=..100]

# UUIDコピー
    data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID

# Init終了
    tag @s remove Chuz.Init