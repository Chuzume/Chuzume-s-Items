#> chuzitems:item/shooting_star_longbow/common/lockon/hit/
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/beam

# コイツが対象だ！
    tag @e[tag=!ChuzItems.Entity.Lockon,tag=!This,dx=0,sort=nearest,limit=1] add This

# マクロ実行
    execute store result storage chuz:context LockID int 1 run scoreboard players get @s Chuz.PlayerID
    execute store result storage chuz:context LockCount int 1 run scoreboard players get @s ChuzItems.ShootingStar.LockCount

# エンドラ以外
    execute as @e[type=!ender_dragon,tag=This,distance=..10,sort=nearest,limit=1] run function chuzitems:item/shooting_star_longbow/common/lockon/hit/check with storage chuz:context

# エンドラ
    execute as @e[type=ender_dragon,team=!Null,tag=This,distance=..10,sort=nearest,limit=1] run function chuzitems:item/shooting_star_longbow/common/lockon/hit/check with storage chuz:context

# リセット
    data remove storage chuz:context LockID
    data remove storage chuz:context LockCount
    tag @e[tag=This,distance=..10] remove This