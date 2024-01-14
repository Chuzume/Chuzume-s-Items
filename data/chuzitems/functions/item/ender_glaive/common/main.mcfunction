#> chuzitems:item/ender_glaive/common/main
#
# 
#
# @within function chuzitems:item/ender_glaive/mainhand/standby/

# チャージ中のパーティクル
    execute if score @s ChuzItems.Charge matches 1.. run function chuzitems:item/ender_glaive/common/charge/

# 着地でスコアリセット
    execute if entity @s[nbt={OnGround:1b}] run scoreboard players set @s ChuzItems.PhotonGlaive.GlideCount 0