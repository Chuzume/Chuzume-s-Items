#> chuzitems:entity/projectile/photon_glaive/tick/pull/
#
# 
#
# @within function chuzitems:entity/projectile/photon_glaive/tick/

# 持ち主の胴体を狙う
    execute as @p[tag=Chuz.ID.Target] at @s anchored eyes rotated ~ 0 positioned ^ ^-0.5 ^ run summon marker ~ ~ ~ {Tags:["Chuz.BodyMarker"]}

# プレイヤーを実行者として移動処理
    execute as @p[tag=Chuz.ID.Target] run function chuzitems:entity/projectile/photon_glaive/tick/pull/player

# 自分の存在一回につき、持ち主にスコア付与
    execute if entity @s[tag=!ChuzItems.PhotonGlaive.Counted] run scoreboard players add @p[tag=Chuz.ID.Target] ChuzItems.PhotonGlaive.GlideCount 1
    tag @s add ChuzItems.PhotonGlaive.Counted

# プレイヤーに向けてビーム
    execute at @s facing entity @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1] feet run function chuzitems:entity/projectile/photon_glaive/tick/pull/laser

# 胴体部分のマーカー削除
    kill @e[type=marker,tag=Chuz.BodyMarker,sort=nearest,limit=1]