#> chuzitems:entity/projectile/charged_shooting_arrow/tick/
#
# 
#
# @within function chuzitems:entity/projectile/event/tick


# 持ち主を特定
    execute at @a[distance=..100] if score @s Chuz.EntityID = @p Chuz.PlayerID run tag @p add Chuz.ID.Target

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# ホーミング
    execute unless entity @s[scores={ChuzItems.Tick=40..}] facing entity @e[tag=Test,sort=nearest,limit=1] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-300 facing entity @s eyes positioned as @s run tp @s ^ ^ ^ ~ ~

# 飛翔
    function chuzitems:entity/projectile/charged_shooting_arrow/tick/move/

# リセット
    tag @s remove ChuzItems.Reflected
    tag @p[tag=Chuz.ID.Target] remove Chuz.ID.Target
    scoreboard players reset $Interval Chuz.Temporary
    scoreboard players reset $PullInterval Chuz.Temporary