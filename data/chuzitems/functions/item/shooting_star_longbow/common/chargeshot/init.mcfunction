#> chuzitems:item/shooting_star_longbow/common/chargeshot/init
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/chargeshot/summon/

## お願いOhMyDat!
    function oh_my_dat:please

## 拡散設定
    # どれくらい視点から離すか
        data modify storage forward_spreader: Distance set value 10.0f

    # どれくらい拡散させるか。
        data modify storage forward_spreader: Spread set value 2.0f

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

## 設定
    # 飛距離
        scoreboard players set @s Chuz.Range 300
    # 弾速
        scoreboard players set @s Chuz.Speed 5
    # フレイム矢であることを反映
        execute if data storage chuz:context arrow.flame run tag @s add ChuzItems.Projectile.FlameArrow
    # ダメージ
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Damage set from storage chuz:context arrow.damage
    # ノックバック
        data modify storage chuz:context arrow.knockback set value 1
        data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Knockback set from storage chuz:context arrow.knockback
# Init終了
    tag @s remove Chuz.Init