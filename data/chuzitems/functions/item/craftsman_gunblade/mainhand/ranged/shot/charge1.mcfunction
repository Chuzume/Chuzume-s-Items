#> chuzitems:item/craftsman_gunblade/mainhand/ranged/shot/charge1
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/ranged/

# 発砲
    playsound minecraft:entity.player.levelup player @a ~ ~ ~ 4 2

# フルバースト
    scoreboard players set @s ChuzItems.BurstCount 8
    scoreboard players set @s ChuzItems.CoolTime 10

# タグ付与
    tag @s add ChuzItems.Gunblade.FullBurst

# リセット
    scoreboard players reset @s ChuzItems.Charge
    scoreboard players reset @s ChuzItems.Ready
    scoreboard players reset @s ChuzItems.Reload