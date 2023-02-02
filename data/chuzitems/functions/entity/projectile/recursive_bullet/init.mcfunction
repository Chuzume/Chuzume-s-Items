#> chuzitems:entity/projectile/recursive_bullet/init
#
# 弾丸の共通Init処理
#
# @within function chuzitems:item/**


# 拡散設定
    # どれくらい視点から離すか
        data modify storage forward_spreader: Distance set from entity @s data.ChuzData.Distance

    # どれくらい拡散させるか。ただしスコアから拡散させる設定だったら無視
        execute unless score @p[tag=This] ChuzItems.Spread matches 0.. run data modify storage forward_spreader: Spread set from entity @s data.ChuzData.Spread
    # スコアから拡散させる。
        execute if score @p[tag=This] ChuzItems.Spread matches 1.. store result storage forward_spreader: Spread float 0.01 run scoreboard players get @p[tag=This] ChuzItems.Spread

    # タグ付きプレイヤーから実行する。ただし拡散0なら射撃側で設定する
        execute unless data storage forward_spreader: {Spread:0.0f} as @p[tag=This] at @s run function chuzitems:item/weapon/gunblade/ranged/fire/spread

    # 拡散用のエンティティを消す
        execute facing entity @e[type=marker,tag=SpreadMarker,distance=..100] feet run tp @s ~ ~-0.15 ~ ~ ~
        kill @e[type=marker,tag=SpreadMarker,distance=..100]

# 発射体のデータから弾速と射程をもらってくる
    execute store result score @s Chuz.Speed run data get entity @s data.ChuzData.Speed
    execute store result score @s Chuz.Range run data get entity @s data.ChuzData.Range

# UUIDコピー
    execute run data modify entity @s data.ChuzData.Owner set from entity @p UUID

# スコアコピー
    scoreboard players operation @s Chuz.EntityID = @p Chuz.PlayerID

# タグ削除
    tag @s remove Chuz.Init