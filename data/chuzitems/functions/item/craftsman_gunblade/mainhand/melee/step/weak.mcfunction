#> chuzitems:item/craftsman_gunblade/mainhand/melee/step/weak
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/melee/step/

# 演出
    particle minecraft:poof ~ ~ ~ 0 0 0 0.1 5
    particle minecraft:crit ~ ~ ~ 0 0 0 0.7 10
    playsound minecraft:entity.zombie.infect player @a ~ ~ ~ 1.5 2
    playsound minecraft:entity.goat.long_jump player @a ~ ~ ~ 2 1.5

# ちょっと上に上げる
    tp @s ~ ~0.1 ~

# 跳躍
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:20b,duration:4,show_particles:0b}]}

# 数を指定して当たり判定用のスライムをぶつける
    scoreboard players set @s ChuzItems.Recursive 10
    execute at @s rotated ~ 0 positioned ~ ~ ~ run function chuzitems:item/craftsman_gunblade/mainhand/melee/step/summon_recursive

# 弾が減る
    #execute in overworld run function chuzitems:item/consume_ammo

# 腹が減る
    #effect give @s[gamemode=!creative] minecraft:hunger 1 20 true

# リセット
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload
    tag @s remove This