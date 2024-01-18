#> chuzitems:item/ricochet_glaive/common/init
#
# 
#

## お願いOhMyDat!
    #function oh_my_dat:please

# 向き設定したあとマーカーを消す
    execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=SpreadMarker,distance=..100]

# UUIDコピー
    data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID

## 飛距離設定
    # ノンチャージ
        execute if score @p[tag=This] ChuzItems.Charge matches ..14 run scoreboard players set @s Chuz.Range 90
    # チャージ1
        execute if score @p[tag=This] ChuzItems.Charge matches 15.. run scoreboard players set @s Chuz.Range 180

## 弾速設定
    # ノンチャージ
        execute if score @p[tag=This] ChuzItems.Charge matches ..14 run scoreboard players set @s Chuz.Speed 2
    # チャージ1
        execute if score @p[tag=This] ChuzItems.Charge matches 15.. run scoreboard players set @s Chuz.Speed 3

## チャージカウントを付与
    # ノンチャージ
        execute if score @p[tag=This] ChuzItems.Charge matches ..14 run scoreboard players set @s ChuzItems.Projectile.Charge 0
    # チャージ1
        execute if score @p[tag=This] ChuzItems.Charge matches 15.. run scoreboard players set @s ChuzItems.Projectile.Charge 1

# Init終了
    tag @s remove Chuz.Init