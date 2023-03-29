#> chuzitems:item/weapon/gunblade/gun/shot/charge0
#
# 通常射撃
#
# @within function chuzitems:item/weapon/gunblade/gun/

# 弾を召喚してInit処理
    #execute summon marker run function chuzitems:item/weapon/gunblade/gun/shot/init/charge0

# 連射数
    scoreboard players set @s ChuzItems.BurstCount 1
    scoreboard players set @s ChuzItems.CoolTime 2

# タグ付与
    tag @s add ChuzItems.Gunblade.NormalShot

# リセット
    scoreboard players reset @s ChuzItems.Charge