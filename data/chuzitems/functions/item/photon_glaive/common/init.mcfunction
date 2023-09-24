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
    # ノンチャージ
        execute unless score @p[tag=This] ChuzItems.Charge matches ..9 run scoreboard players set @s Chuz.Range 20
    # チャージ1
        execute if score @p[tag=This] ChuzItems.Charge matches 10.. run scoreboard players set @s Chuz.Range 60

# 弾速設定
    # ノンチャージ
        execute unless score @p[tag=This] ChuzItems.Charge matches ..9 run scoreboard players set @s Chuz.Speed 3
    # チャージ1
        execute if score @p[tag=This] ChuzItems.Charge matches 10.. run scoreboard players set @s Chuz.Speed 4

# Init終了
    tag @s remove Chuz.Init