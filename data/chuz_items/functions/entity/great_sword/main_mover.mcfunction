
# オーナーを確認
    tag @s add Chuz.This
    execute at @a if score @e[type=area_effect_cloud,tag=Chuz.This,distance=..6,limit=1] Chuz_En.ID = @p Chuz_Pl.ID run tag @p add ChuzItems.This

# 追従
    execute if entity @s[tag=!ChuzItems.MoverCombo3] at @p[tag=ChuzItems.This] rotated ~ 0 positioned ^-0.3 ^ ^-0.2 run tp @s ~ ~-0.5 ~

# 3コンボ目は動く
    execute if entity @s[tag=ChuzItems.MoverCombo3] at @p[tag=ChuzItems.This] rotated ~ 0 run function chuz_items:entity/great_sword/combo3_mover

# 位置更新
    data modify entity @s Air set from entity @s Age

# タグ削除
    tag @a[tag=ChuzItems.This] remove ChuzItems.This
    tag @s remove Chuz.This
