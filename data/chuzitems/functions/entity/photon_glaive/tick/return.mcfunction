#> chuzitems:entity/photon_glaive/tick/return
#
# 戻ってくる処理
#
# @within function chuzitems:entity/photon_glaive/tick/

# 持ち主を特定
    execute at @a[distance=..100] if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add Chuz.ID.Target

# 持ち主の胴体を狙う
    execute as @p[tag=Chuz.ID.Target] at @s anchored eyes positioned ^ ^-0.5 ^ run summon marker ~ ~ ~ {Tags:["Chuz.BodyMarker"]}

# 持ち主の方を向く
    execute facing entity @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-600 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 持ち主が近かったら急旋回
    execute facing entity @e[type=marker,tag=Chuz.BodyMarker,distance=..7,sort=nearest,limit=1] eyes positioned ^ ^ ^-200 rotated as @s positioned ^ ^ ^-100 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 胴体部分のマーカー削除
    kill @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1]

# キャッチ
    execute at @s positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[tag=Chuz.ID.Target,dx=0] at @s run function chuzitems:entity/photon_glaive/tick/catch

# リセット
    tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target