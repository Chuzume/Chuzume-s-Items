
# タグ調整
    tag @s remove MoverInit

# スコアコピー
    scoreboard players operation @s Chuz_En.ID = @p Chuz_Pl.ID

# コンボ設定
    execute unless entity @p[tag=Chuz.This,scores={S.Rif_Combo=0..}] run tag @s add S.Rif_MoverCombo1
    execute if entity @p[tag=Chuz.This,scores={S.Rif_Combo=1}] run tag @s add S.Rif_MoverCombo2
    execute if entity @p[tag=Chuz.This,scores={S.Rif_Combo=2}] run tag @s add S.Rif_MoverCombo3

# 
    execute at @p run tp @s ~ ~ ~ ~ 0
