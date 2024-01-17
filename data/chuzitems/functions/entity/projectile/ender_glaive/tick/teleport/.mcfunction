#> chuzitems:entity/projectile/ender_glaive/tick/teleport/
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/

# プレイヤーとして実行
    execute as @p[tag=Chuz.ID.Target] run function chuzitems:entity/projectile/ender_glaive/tick/teleport/player

# キャッチ処理実行
    function chuzitems:entity/projectile/glaive_common/tick/catch/

# チャージされてたら炸裂
    execute if score @s ChuzItems.Projectile.Charge matches 1 run function chuzitems:entity/projectile/ender_glaive/tick/teleport/discharge/

# プレイヤーの位置で演出
    execute at @p[tag=Chuz.ID.Target] positioned ~ ~1 ~ run function chuzitems:entity/projectile/ender_glaive/tick/catch/vfx

# キル
    function chuzitems:entity/projectile/glaive_common/tick/kill