#> delta:internal/subtick/post_explosion_trigger
#   Runs commands as the player immediately after the creeper explosion has been processed
#
# Callers:
#   > delta:post_explosion_trigger (advancement)

advancement revoke @s only delta:post_explosion_trigger

#Revert player to previous gamemode
gamemode adventure @s[scores={delta.internal.gamemode=0}]
gamemode creative @s[scores={delta.internal.gamemode=1}]
gamemode spectator @s[scores={delta.internal.gamemode=2}]
gamemode survival @s[scores={delta.internal.gamemode=3}]

# back to original positione
#    execute positioned as @e[type=marker,tag=delta.back,sort=nearest,limit=1] run tp @s ~ ~ ~

# kill entity
#    kill @e[type=marker,tag=delta.back]
#    tp @e[type=bat,tag=delta.bat] ~ ~-300 ~
#    kill @e[type=bat,tag=delta.bat]

#Revert mobGriefing gamerule if necessary
execute if score $temp delta.internal.mobgriefing matches 1 run gamerule mobGriefing true
#Revert difficulty if necessary
execute if score $diff delta.internal.gamemode matches 0 run difficulty peaceful
execute if score $diff delta.internal.gamemode matches 0 run say yo

# 装備を戻す
loot replace entity @s weapon.mainhand mine 100001 0 100000 minecraft:debug_stick

# 降りてくる
tp @s ~ ~-1000 ~

# デスポーン解除防止
    execute at @s as @e[type=#delta:technical/despawn,tag=delta.nodespawn,distance=..128] at @s run function delta:internal/subtick/cancel_persistence_required

# kill entity
    tp @e[type=bat,tag=delta.bat,distance=..1000,sort=nearest,limit=2] ~ ~-300 ~
    kill @e[type=bat,tag=delta.bat,distance=..1000,sort=nearest,limit=2]
