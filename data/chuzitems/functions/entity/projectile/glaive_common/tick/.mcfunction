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

# モデルを追従
    execute on passengers run tag @s add This
    tp @e[type=item_display,tag=ChuzItems.Model.Glaive,tag=This,sort=nearest,limit=1] ~ ~ ~ ~ ~
    execute on passengers run tag @s remove This