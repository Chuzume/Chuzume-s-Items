#> chuzitems:item/craftsman_gunblade/mainhand/melee/step/bullet
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/melee/step/

# タグ付与
    tag @s add ChuzItems.Steping

# 演出
    particle minecraft:smoke ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:lava ~ ~ ~ 0 0 0 0.7 5
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.firework_rocket.blast player @a ~ ~ ~ 1 1
    playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 1 1.7
    
# 
    #tp @s ~ ~0.1 ~

# 跳躍
    scoreboard players set $Power Chuz.Motion.Power 1
    execute rotated ~ ~ run function chuzitems:lib/player_motion/

# 弾が減る
    #execute in overworld run function chuzitems:item/consume_ammo

# 腹が減る
    #effect give @s[gamemode=!creative] minecraft:hunger 1 20 true

# リセット
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload
    tag @s remove This