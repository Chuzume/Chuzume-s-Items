#> chuzitems:entity/projectile/ender_glaive/tick/hit_wall
#
# 
#
# @within function chuzitems:entity/projectile/ender_glaive/tick/


# 演出
    playsound chuzume:blaster3 neutral @a ~ ~ ~ 1 2
    playsound minecraft:entity.blaze.hurt neutral @a ~ ~ ~ 1 2
    particle minecraft:crit ~ ~ ~ 0 0 0 0.5 10

# 停止
    scoreboard players set @s Chuz.Range 0

# 下がる
    execute at @s run tp @s ^ ^ ^-0.5

# タグ削除
    tag @s remove ChuzItems.Glaive.HitWall