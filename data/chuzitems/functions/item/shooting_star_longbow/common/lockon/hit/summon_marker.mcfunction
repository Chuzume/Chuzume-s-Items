#> chuzitems:item/shooting_star_longbow/common/lockon/hit/summon_marker
#
# 
#
# @within function chuzitems:item/shooting_star_longbow/common/lockon/hit/success

# 召喚
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=0}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon0","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=1}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon1","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=2}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon2","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=3}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon3","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=4}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon4","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=5}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon5","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=6}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon6","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=7}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon7","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=8}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon8","Chuz.Init"]}
    execute if entity @s[scores={ChuzItems.ShootingStar.LockCount=9}] run summon marker ~ ~ ~ {Tags:["Chuz.Projectile","ChuzItems.Entity.Lockon","ChuzItems.Entity.Lockon9","Chuz.Init"]}

# Init
    execute as @e[type=marker,tag=ChuzItems.Entity.Lockon,tag=Chuz.Init,sort=nearest,limit=1] store result score @s Chuz.EntityID run scoreboard players get @p[tag=This] Chuz.PlayerID
    tag @e[type=marker,tag=ChuzItems.Entity.Lockon,tag=Chuz.Init,sort=nearest,limit=1] remove Chuz.Init