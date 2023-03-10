
# UUIDコピーしたAECをぶちかます
    attribute @s minecraft:generic.knockback_resistance modifier add 0-0-8-2-8 "Temp_Resist" 1 add
    execute if entity @s[type=#csr_score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:"crit",Tags:[Chuz.UUIDHit],Radius:0.4f,Duration:6,DurationOnUse:0,Age:4,WaitTime:0,Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:6b,Amplifier:0b,Duration:1,ShowParticles:0b}]}
    execute if entity @s[type=!#csr_score_damage:undead] at @s anchored feet positioned ^ ^ ^ run summon area_effect_cloud ~ ~0.5 ~ {Particle:"crit",Tags:[Chuz.UUIDHit],Radius:0.4f,Duration:6,DurationOnUse:0,Age:4,WaitTime:0,Effects:[{Id:22b,Amplifier:1b,Duration:1,ShowParticles:0b},{Id:7b,Amplifier:0b,Duration:1,ShowParticles:0b}]}

# オーナーのUUIDをコピー
    data modify entity @e[type=minecraft:area_effect_cloud,tag=Chuz.UUIDHit,sort=nearest,limit=1] Owner set from entity @e[type=marker,tag=Chuz.UUIDAttack,sort=nearest,limit=1] data.ChuzData.Owner
    data modify entity @e[type=minecraft:area_effect_cloud,tag=Chuz.UUIDHit,sort=nearest,limit=1] Owner set from entity @e[type=armor_stand,tag=Chuz.UUIDAttack,sort=nearest,limit=1] ArmorItems[0].tag.OwnerUUID
    data modify entity @e[type=minecraft:area_effect_cloud,tag=Chuz.UUIDHit,sort=nearest,limit=1] Owner set from entity @e[tag=Chuz.PlayerAttack,sort=nearest,limit=1] UUID

# リセット
    tag @s add Chuz.UUIDHit.Reset
    schedule function chuzitems:uuid_hit_reset 2t
