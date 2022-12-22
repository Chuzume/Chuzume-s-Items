
# タグ調整
    tag @s add ChuzItems.Sweep
    tag @s remove ChuzItems.SweepInit

# コンボ設定
    execute unless entity @p[tag=Chuz.This,scores={ChuzItems.Combo=0..}] run tag @s add ChuzItems.SweepCombo1
    execute if entity @p[tag=Chuz.This,scores={ChuzItems.Combo=1}] run tag @s add ChuzItems.SweepCombo2
    execute if entity @p[tag=Chuz.This,scores={ChuzItems.Combo=2}] run tag @s add ChuzItems.SweepCombo3

# 
    execute if entity @s[tag=ChuzItems.SweepCombo1] at @p[tag=Chuz.This] run tp @s ~ ~ ~ ~90 0
    execute if entity @s[tag=ChuzItems.SweepCombo2] at @p[tag=Chuz.This] run tp @s ~ ~ ~ ~-90 0
    execute if entity @s[tag=ChuzItems.SweepCombo3] at @p[tag=Chuz.This] run tp @s ~ ~ ~ ~45 0

# スコア設定
    scoreboard players set @s Chuz.Range 30
