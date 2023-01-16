#> chuz_items:item/techkit_revomachine_gun/gun/shot/setdata_normal
#
# 色々設定する 
#
# @within function chuz_items:item/techkit_revomachine_gun/gun/

# タグ付与: 通常射撃
    tag @s add ChuzItems.Shot.Normal

# クールタイム設定
    scoreboard players set @s ChuzItems.CoolTime 3

# バースト数を設定
    scoreboard players set @s ChuzItems.BurstCount 2

# 精度上昇
    scoreboard players remove @s ChuzItems.Spread 5
    scoreboard players set @s[scores={ChuzItems.Spread=..0}] ChuzItems.Spread 1