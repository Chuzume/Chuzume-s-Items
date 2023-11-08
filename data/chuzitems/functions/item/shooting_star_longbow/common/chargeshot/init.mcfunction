#> chuzitems:item/shooting_star_longbow/common/chargeshot/init
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/chargeshot/summon

## 拡散設定
    # どれくらい視点から離すか
        data modify storage forward_spreader: Distance set value 7.0f

    # どれくらい拡散させるか。
        data modify storage forward_spreader: Spread set value 4.0f

    # タグ付きプレイヤーから実行する。ただし拡散値0なら射撃側で設定
        execute as @p[tag=This] at @s run function chuzitems:item/shooting_star_longbow/common/chargeshot/spread

    # 拡散用のエンティティのほうを向く
        execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~ ~ ~ ~
    
    # マーカーをキル
        kill @e[type=marker,tag=SpreadMarker,distance=..100]

# UUIDコピー
    data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID

## 飛距離設定
    # ノンチャージ
        scoreboard players set @s Chuz.Range 100
        scoreboard players set @s Chuz.Speed 10

# Init終了
    tag @s remove Chuz.Init