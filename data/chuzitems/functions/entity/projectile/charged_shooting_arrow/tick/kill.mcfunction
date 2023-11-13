#> chuzitems:entity/projectile/charged_shooting_arrow/tick/kill
#
# 削除するときの処理
#

# 演出
    particle electric_spark ~ ~ ~ 0 0 0 0.5 10
    particle crit ~ ~ ~ 0 0 0 0.5 10
    playsound entity.arrow.hit neutral @a ~ ~ ~ 1 1

# キル
    kill @s