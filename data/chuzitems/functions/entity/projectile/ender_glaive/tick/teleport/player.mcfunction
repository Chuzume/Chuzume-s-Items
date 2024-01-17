#> chuzitems:entity/projectile/ender_glaive/tick/teleport/player
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/teleport/

# 演出
    execute at @s positioned ~ ~0.5 ~ run function chuzitems:entity/projectile/ender_glaive/tick/teleport/vfx

# 落下速度リセット
    tp @s 0 0 0

# テレポート
    execute rotated ~ 0 run tp @s ^ ^ ^-0.5

# エフェクト付与
    effect give @s slow_falling 1 0 true

# 演出
    execute at @s positioned ~ ~0.5 ~ run function chuzitems:entity/projectile/ender_glaive/tick/teleport/vfx

# カウント付与
    scoreboard players add @p[tag=Chuz.ID.Target] ChuzItems.PhotonGlaive.GlideCount 1