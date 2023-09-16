#> delta:internal/subtick/begin_launch_context
#   Sets up the bat and aec used to trigger the player_hurt_entity advancement right before an explosion

summon minecraft:area_effect_cloud ~ ~10000 ~ {Duration:1,Radius:0.0f,ReapplicationDelay:-1,Age:-1,WaitTime:0,effects:[{id:instant_damage,amplifier:0b,duration:1}],Tags:["delta.init.aec"]}
summon minecraft:bat ~ ~10000 ~ {DeathLootTable:"",NoAI:1b,Tags:["delta.pre_explosion","delta.bat"],PersistenceRequired:1b,DeathTime:19s,Health:2048f,Attributes:[{Name:generic.max_health,Base:2048}]}
function delta:internal/subtick/get_player_uuid
execute positioned ~ ~10000 ~ as @e[type=area_effect_cloud,tag=delta.init.aec,distance=..0.01] run function delta:internal/subtick/aec_setup

# prevention despawn
    execute as @e[type=#delta:technical/despawn,nbt={PersistenceRequired:0b},distance=..128] at @s run function delta:internal/subtick/prevention_despawn
