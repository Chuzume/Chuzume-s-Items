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

# モデルを追従
    execute on passengers run tag @s add This
    tp @e[type=item_display,tag=ChuzItems.Model.Glaive,tag=This,sort=nearest,limit=1] ~ ~ ~ ~ ~
    execute on passengers run tag @s remove This

# 飛距離使い切ったら戻ってくる
    execute if entity @s[scores={Chuz.Range=..0}] run function chuzitems:entity/projectile/glaive_common/tick/return

# 壁反射
    execute if score @s Chuz.Range matches -40.. run function chuzitems:entity/projectile/glaive_common/tick/ricochet/

