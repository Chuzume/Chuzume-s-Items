#> chuzitems:entity/projectile/recursive_bullet/new_init
#
# 
#
# @within function chuzitems:**

## お願いOhMyDat!
    function oh_my_dat:please

## 拡散設定
    # どれくらい視点から離すか
        data modify storage forward_spreader: Distance set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Distance

    # どれくらい拡散させるか。
        data modify storage forward_spreader: Spread set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Spread

    # タグ付きプレイヤーから実行する。ただし拡散値0なら射撃側で設定
        execute unless data storage forward_spreader: {Spread:0.0f} as @p[tag=This] at @s run function chuzitems:entity/projectile/recursive_bullet/spread

    # 拡散用のエンティティのほうを向く
        execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~-0.15 ~ ~ ~
    
    # マーカーをキル
        kill @e[type=marker,tag=SpreadMarker,distance=..100]

# 発射体のデータから弾速と射程をもらってくる
    execute store result score @s Chuz.Speed run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Speed
    execute store result score @s Chuz.Range run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Projectile.Range

# UUIDコピー
    execute run data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID
