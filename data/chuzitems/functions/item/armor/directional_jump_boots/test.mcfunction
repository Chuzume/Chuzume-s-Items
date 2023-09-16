#> chuzitems:item/armor/directional_jump_boots/test
#
# 
#
# @within function chuzitems:item/armor/directional_jump_boots/main

#
    tag @s add This
    summon skeleton 0 1000 0 {PersistenceRequired:1b,Tags:["Chuz.Motion.Pre"]}
    summon arrow 0 999 0 {"Motion":[0.0d,10.0d,0.0d],Tags:["HogeNew"]}

    execute positioned 0 1000 0 anchored eyes positioned ^ ^ ^-0.01 run summon creeper ~ ~ ~ {Fuse:0s,ExplosionRadius:1b,PersistenceRequired:1b}

    summon skeleton 0 1000 0 {PersistenceRequired:1b,Tags:["Chuz.Motion.Post"]}
    summon arrow 0 999 0 {"Motion":[0.0d,10.0d,0.0d],Tags:["HogeNew"]}

    execute as @e[tag=HogeNew] run data modify entity @s Owner set from entity @p[tag=This] UUID

    tag @e[tag=HogeNew] remove HogeNew
    tag @s remove This 