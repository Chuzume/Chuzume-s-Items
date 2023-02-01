#> chuzitems:common/headshot/success
#
# ヘッドショット成功時
#
# @within function chuzitems:player/tick

# 演出
    playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 2 1

# リセット
    tag @s remove ChuzItems.HeadShot