#> chuzitems:entity/photon_glaive/tick/return
#
# 
#
# @within function chuzitems:entity/photon_glaive/tick/

# 持ち主の胴体を狙う
    execute as @p[tag=Chuz.ID.Target] at @s anchored eyes positioned ^ ^-0.5 ^ run summon marker ~ ~ ~ {Tags:["Chuz.BodyMarker"]}

# 持ち主の方を向く
    execute if score @s Chuz.Range matches ..1 facing entity @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-90 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 胴体部分のマーカー削除
    kill @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1]