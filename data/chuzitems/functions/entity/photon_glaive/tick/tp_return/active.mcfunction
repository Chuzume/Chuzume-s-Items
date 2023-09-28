#> chuzitems:entity/photon_glaive/tick/tp_return/active
#
# TP演出など
#
# @within function chuzitems:entity/photon_glaive/tick/tp_return/

# パーティクル
    particle dust_color_transition 1 1 1 1 1 0 1 ~ ~ ~ 0.4 0.4 0.4 0 50 force @a[distance=..120]
    particle explosion ~ ~ ~ 0 0 0 0 1 force @a[distance=..120]

# 取得
    execute at @p[tag=Chuz.ID.Target] run function chuzitems:entity/photon_glaive/tick/tp_return/warp_catch