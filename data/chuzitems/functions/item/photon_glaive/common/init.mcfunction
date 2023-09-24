#> chuzitems:item/photon_glaive/common/init
#
# 
#
# @within function chuzitems:item/photon_glaive/**

## お願いOhMyDat!
    function oh_my_dat:please

# 向き設定したあとマーカーを消す
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=SpreadMarker,distance=..100]

# UUIDコピー
    data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID

# 飛距離設定
    scoreboard players set @s Chuz.Range 100

# 弾速設定
    scoreboard players set @s Chuz.Speed 3

# Init終了
    tag @s remove Chuz.Init