#> chuzitems:item/techkit_revomachine_gun/gun/shot/setdata_normal
#
# 色々設定する 
#
# @within function chuzitems:item/techkit_revomachine_gun/gun/

# タグ付与: 通常射撃
    tag @s add ChuzItems.Shot.Normal

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 3

# バースト数を設定
    scoreboard players set @s ChuzItems.BurstCount 2

# 精度
    scoreboard players set @s ChuzItems.Spread 20
