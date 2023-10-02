#> chuzitems:item/photon_glaive/common/main
#
# メイン処理。実は左右で同じ。
#
# @within function
#   chuzitems:item/photon_glaive/offhand/standby/
#   chuzitems:item/photon_glaive/mainhand/standby/

# チャージ中のパーティクル
    execute if score @s ChuzItems.Charge matches 1.. run function chuzitems:item/photon_glaive/common/charge/

# 着地でスコアリセット
    execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ChuzItems.PhotonGlaive.GlideCount 0