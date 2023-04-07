#> chuzitems:entity/projectile/wizard_seeker/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick

# ホーミング
    execute facing entity @e[tag=HogeLock,sort=nearest,limit=1] eyes positioned ^ ^ ^-1000 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes positioned as @s run tp @s ~ ~ ~ ~ ~