
# オーナーを確認
    tag @s add Chuz.This
    execute at @a if score @e[type=area_effect_cloud,tag=Chuz.This,distance=..6,limit=1] Chuz_En.ID = @p Chuz_Pl.ID run tag @p add S.Rif_This

# 追従
    execute if entity @s[tag=!S.Rif_MoverCombo3] at @p[tag=S.Rif_This] rotated ~ 0 positioned ^-0.3 ^ ^-0.2 run tp @s ~ ~-0.5 ~

# 3コンボ目は動く
    execute if entity @s[tag=S.Rif_MoverCombo3] at @p[tag=S.Rif_This] rotated ~ 0 run function chuz_items:entity/great_sword/combo3_mover

# 位置更新
    data modify entity @s Air set from entity @s Age

# タグ削除
    tag @a[tag=S.Rif_This] remove S.Rif_This
    tag @s remove Chuz.This
