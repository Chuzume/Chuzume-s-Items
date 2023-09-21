#> chuzitems:item/craftsman_gunblade/mainhand/melee/step/summon_recursive
#
# 
#
# @within function
#   chuzitems:item/craftsman_gunblade/mainhand/melee/step/bullet
#   chuzitems:item/craftsman_gunblade/mainhand/melee/step/weak
#   chuzitems:item/craftsman_gunblade/mainhand/melee/step/summon_recursive

# ゲームルールをちょっといじる
    gamerule maxEntityCramming 0

# スライムを召喚
    scoreboard players remove @s ChuzItems.Recursive 1
    summon magma_cube ^ ^-0.5 ^ {NoAI:1b,Silent:1b,Invulnerable:1b,DeathTime:19s,DeathLootTable:"minecraft:empty",Tags:["Chuz.CollisionSlime","Chuz.NonVanillaMob"],ActiveEffects:[{Id:14,Amplifier:0b,Duration:999,ShowParticles:0b}]}
    execute if score @s ChuzItems.Recursive matches 0.. run function chuzitems:item/craftsman_gunblade/mainhand/melee/step/summon_recursive

# ちょっとした後戻す
    schedule function chuzitems:item/craftsman_gunblade/mainhand/melee/step/return_gamemode 2t