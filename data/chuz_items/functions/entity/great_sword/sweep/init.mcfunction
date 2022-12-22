
# タグ調整
    tag @s add S.Rif_Sweep
    tag @s remove S.Rif_SweepInit

# コンボ設定
    execute unless entity @p[tag=Chuz.This,scores={S.Rif_Combo=0..}] run tag @s add S.Rif_SweepCombo1
    execute if entity @p[tag=Chuz.This,scores={S.Rif_Combo=1}] run tag @s add S.Rif_SweepCombo2
    execute if entity @p[tag=Chuz.This,scores={S.Rif_Combo=2}] run tag @s add S.Rif_SweepCombo3

# 
    execute if entity @s[tag=S.Rif_SweepCombo1] at @p[tag=Chuz.This] run tp @s ~ ~ ~ ~90 0
    execute if entity @s[tag=S.Rif_SweepCombo2] at @p[tag=Chuz.This] run tp @s ~ ~ ~ ~-90 0
    execute if entity @s[tag=S.Rif_SweepCombo3] at @p[tag=Chuz.This] run tp @s ~ ~ ~ ~45 0

# スコア設定
    scoreboard players set @s Chuz.Range 30
