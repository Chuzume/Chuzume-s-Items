#> chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/
#
# 
#
# @within function
#   chuzitems:item/weapon/rod_of_darkness_laser/event/left/shoot
#   chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/

# パーティクル
    particle dust 1 1 1 2 ~ ~ ~ 0 0 0 0 1 force @a

# 現在座標が空気じゃなかったら実行
    execute unless block ~ ~ ~ #chuzitems:no_collision run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/summon_laser

# 限界越えても実行
    execute unless entity @s[distance=..60] run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/summon_laser

# 現在座標が空気かどうかチェック、空気なら再帰
    execute if entity @s[distance=..60] if block ~ ~ ~ #chuzitems:no_collision positioned ^ ^ ^1 run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/recursive/
