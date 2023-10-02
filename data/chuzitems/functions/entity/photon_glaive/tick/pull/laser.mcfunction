#> chuzitems:entity/photon_glaive/tick/pull/laser
#
# 
#
# @within function
#   chuzitems:entity/photon_glaive/tick/pull/
#   chuzitems:entity/photon_glaive/tick/pull/laser
# パーティクル
    particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..30]

# ブロックや持ち主に当たらなかったら再帰
    execute if entity @s[distance=..30] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @p[tag=Chuz.ID.Target,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:entity/photon_glaive/tick/pull/laser
