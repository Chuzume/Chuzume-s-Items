
# タグ調整
    tag @s remove MoverInit

# スコアコピー
    scoreboard players operation @s Chuz_En.ID = @p Chuz_Pl.ID

# コンボ設定
    execute unless entity @p[tag=Chuz.This,scores={ChuzItems.Combo=0..}] run tag @s add ChuzItems.MoverCombo1
    execute if entity @p[tag=Chuz.This,scores={ChuzItems.Combo=1}] run tag @s add ChuzItems.MoverCombo2
    execute if entity @p[tag=Chuz.This,scores={ChuzItems.Combo=2}] run tag @s add ChuzItems.MoverCombo3

# 
    execute at @p run tp @s ~ ~ ~ ~ 0
