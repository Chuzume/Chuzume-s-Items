
# ゲームルールをちょっといじる
    gamerule maxEntityCramming 0

# スライムを召喚
    scoreboard players remove @s S.Rif_Recursive 1
    summon magma_cube ^ ^-0.5 ^ {NoAI:1b,Silent:1b,Invulnerable:1b,DeathTime:19,DeathLootTable:"minecraft:emptyy",Tags:["S.Rif_Slime","Chuz_NonVanillaMob"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999,ShowParticles:0b}]}
    execute if score @s S.Rif_Recursive matches 0.. run function craftsman_arms:item/gunblade/summon_recursive

# ちょっとした後戻す
    schedule function craftsman_arms:item/gunblade/melee/return_gamerule 2t