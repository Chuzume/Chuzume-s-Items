#> chuzitems:item/craftsman_gunblade/mainhand/ranged/shot/charge0
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/ranged/

# 連射数
    scoreboard players set @s ChuzItems.BurstCount 1
    scoreboard players set @s ChuzItems.CoolTime 2

# タグ付与
    tag @s add ChuzItems.Gunblade.NormalShot

# リセット
    scoreboard players reset @s ChuzItems.Charge