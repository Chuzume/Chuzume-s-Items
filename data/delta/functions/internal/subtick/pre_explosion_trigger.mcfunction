#> delta:internal/subtick/pre_explosion_trigger
#   Runs commands as the player after all other entity processing has occurred and before the explosion has occurred
#
# Callers:
#   > delta:pre_explosion_trigger (advancement)

advancement revoke @s only delta:pre_explosion_trigger

#Store previous gamemode before switching
scoreboard players set @s[gamemode=adventure] delta.internal.gamemode 0
scoreboard players set @s[gamemode=creative] delta.internal.gamemode 1
scoreboard players set @s[gamemode=spectator] delta.internal.gamemode 2
scoreboard players set @s[gamemode=survival] delta.internal.gamemode 3

#Put self in creative so only knockback is applied, no damage
gamemode creative

#
#    summon marker ~ ~ ~ {Tags:["delta.back"]}
#    execute positioned 0 10 0 run tp @s ^ ^ ^

#Teleport creepers down
scoreboard players operation $temp delta.internal.id = @s delta.internal.id

#Temporarily disable mobGriefing (not usually necessary unless a positive explosion radius creeper is used)
execute store result score $temp delta.internal.mobgriefing run gamerule mobGriefing
gamerule mobGriefing false