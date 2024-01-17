#> chuzitems:entity/projectile/glaive_common/tick/
#
# 
#

# 持ち主を特定
    execute at @a[distance=..100] if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add Chuz.ID.Target

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# 実行時間を移す
    scoreboard players operation $Interval Chuz.Temporary = @s ChuzItems.Tick

# モデルを回す
    execute on passengers run function chuzitems:entity/projectile/glaive_common/tick/model_spin

# 持ち主の死亡時の処理
    execute if score @p[tag=Chuz.ID.Target] ChuzItems.Death matches 1.. run function chuzitems:entity/projectile/glaive_common/tick/catch/death with storage chuz:context Glaive

# モデルを追従
    execute at @s on passengers run tp @s ~ ~ ~ ~ ~