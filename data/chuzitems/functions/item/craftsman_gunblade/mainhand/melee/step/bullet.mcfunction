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
    
# 疲労度(?)を追加
    scoreboard players add @s ChuzItems.Gunblade.StepCount 40

# ちょっと上に持ち上げる
    tp @s ~ ~0.1 ~

# 跳躍
    summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,effects:[{id:"minecraft:levitation",amplifier:20b,duration:4,show_particles:0b}]}

# 数を指定して当たり判定用のスライムをぶつける
    scoreboard players set @s ChuzItems.Recursive 35
    execute at @s rotated ~ 0 positioned ~ ~ ~ run function chuzitems:item/craftsman_gunblade/mainhand/melee/step/summon_recursive

# 弾が減る
    #execute in overworld run function chuzitems:item/consume_ammo

# 腹が減る
    #effect give @s[gamemode=!creative] minecraft:hunger 1 20 true

# リセット
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload
    tag @s remove This