#> chuzitems:entity/lockon_marker/kill
#
# 
#
# @within function chuzitems:entity/lockon_marker/

# 死亡時に持ち主のロックカウント減らしておく
    scoreboard players remove @p[tag=Chuz.ID.Target] ChuzItems.ShootingStar.LockCount 1

# キル
    kill @s