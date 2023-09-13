#> chuzitems:lib/player_motion/
#
# 
#
# @within function chuzitems:**

#
    tag @s add This
    summon skeleton 0 10 0 {PersistenceRequired:1b,Health:2048f,Tags:["HogePre","HogeNew"]}
    summon arrow 0 9 0 {"Motion":[0.0d,10.0d,0.0d],Tags:["HogeNew"]}

# クリーパーを召喚
    execute positioned 0 1000 0 anchored eyes positioned ^ ^ ^-0.01 run function chuzitems:lib/player_motion/summon_recursive

    summon skeleton 0 10 0 {PersistenceRequired:1b,Health:2048f,Tags:["HogePost","HogeNew"]}
    summon arrow 0 9 0 {"Motion":[0.0d,10.0d,0.0d],Tags:["HogeNew"]}

    execute as @e[tag=HogeNew] run data modify entity @s Owner set from entity @p[tag=This] UUID


# リセット
    scoreboard players reset $Power Chuz.Motion.Power
    tag @e[tag=HogeNew] remove HogeNew
    tag @s remove This 
