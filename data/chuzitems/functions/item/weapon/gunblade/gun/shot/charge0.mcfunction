#> chuzitems:item/weapon/gunblade/gun/shot/charge0
#
# 通常射撃
#
# @within function chuzitems:item/weapon/gunblade/gun/

# 連射数
    scoreboard players set @s ChuzItems.BurstCount 1
    scoreboard players set @s ChuzItems.CoolTime 2

# タグ付与
    tag @s add ChuzItems.Gunblade.NormalShot

# リセット
    scoreboard players reset @s ChuzItems.Charge