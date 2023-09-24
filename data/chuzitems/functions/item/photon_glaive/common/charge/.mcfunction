#> chuzitems:item/photon_glaive/common/charge/
#
# チャージ中の処理
#
# @within function chuzitems:item/photon_glaive/common/main

# シェイプ
    execute rotated 0 0 positioned ~ ~0.1 ~ run function chuzitems:item/photon_glaive/common/charge/shape

# パーティクル
    execute if score @s ChuzItems.Charge matches ..9 run particle dust_color_transition 0 0.5 0.75 0.7 0.3 1 1 ~ ~0.1 ~ 0.3 0 0.3 0 5 force @a[distance=..30]
    execute if score @s ChuzItems.Charge matches 10.. run particle dust_color_transition 0 0.75 1 1 1 1 1 ~ ~0.1 ~ 0.3 0 0.3 0 5 force @a[distance=..30]

# サウンド
    execute if score @s ChuzItems.Charge matches 10 positioned ~ ~0.1 ~ run function chuzitems:item/photon_glaive/common/charge/finish