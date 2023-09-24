#> chuzitems:entity/photon_glaive/tick/return
#
# 戻ってくる処理
#
# @within function chuzitems:entity/photon_glaive/tick/

# 持ち主の胴体を狙う
    execute as @p[tag=Chuz.ID.Target] at @s anchored eyes positioned ^ ^-0.5 ^ run summon marker ~ ~ ~ {Tags:["Chuz.BodyMarker"]}

# 持ち主の方を向く
    #execute facing entity @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-100 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~
    execute facing entity @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 持ち主が近かったら急旋回
    #execute facing entity @e[type=marker,tag=Chuz.BodyMarker,distance=..7,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-100 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 胴体部分のマーカー削除
    kill @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1]