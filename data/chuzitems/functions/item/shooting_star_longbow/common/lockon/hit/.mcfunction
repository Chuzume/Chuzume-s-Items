#> chuzitems:item/shooting_star_longbow/common/lockon/hit/
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/beam

# 召喚
    #execute at @e[tag=!ChuzItems.Entity.Lockon,tag=!This,dx=0] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","Chuz.Init"]}

# マクロ実行
    execute store result storage chuz:context LockID int 1 run scoreboard players get @s Chuz.PlayerID
    execute store result storage chuz:context LockCount int 1 run scoreboard players get @s ChuzItems.ShootingStar.LockCount
    execute as @e[tag=!ChuzItems.Entity.Lockon,tag=!This,dx=0] run function chuzitems:item/shooting_star_longbow/common/lockon/hit/check with storage chuz:context

# Init
    #execute as @e[type=marker,tag=ChuzItems.Entity.Lockon,tag=Chuz.Init,sort=nearest,limit=1] at @s run function chuzitems:item/shooting_star_longbow/common/lockon/hit/init
    #tag @e[type=marker,tag=ChuzItems.Entity.Lockon,tag=Chuz.Init,sort=nearest,limit=1] remove Chuz.Init

# リセット
    data remove storage chuz:context LockID
    data remove storage chuz:context LockCount