#> chuzitems:item/shooting_star_longbow/common/end_burst
#
# バースト終了時に実行
#

# リセット
    scoreboard players reset @s ChuzItems.ShootingStar.LockCount
    scoreboard players reset @s ChuzItems.BurstCount 

# オーバーヒート
    playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1 1.5
    execute anchored eyes positioned ^ ^ ^2 run particle poof ~ ~ ~ 0 0 0 0.1 10 