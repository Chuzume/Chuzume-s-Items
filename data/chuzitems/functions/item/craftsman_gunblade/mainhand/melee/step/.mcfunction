#> chuzitems:item/craftsman_gunblade/mainhand/melee/step/
#
# 
#
# @within function chuzitems:item/craftsman_gunblade/mainhand/melee/


# バレットステップ
    execute unless entity @s[tag=ChuzItems.TiredStep] run function chuzitems:item/craftsman_gunblade/mainhand/melee/step/bullet

# へろへろステップ
    execute if entity @s[tag=ChuzItems.TiredStep] run function chuzitems:item/craftsman_gunblade/mainhand/melee/step/weak

# ステップを使い込んだらタグ付与
    scoreboard players set @s[tag=!ChuzItems.TiredStep,scores={ChuzItems.Gunblade.StepCount=75..}] ChuzItems.Gunblade.StepCount 80
    tag @s[tag=!ChuzItems.TiredStep,scores={ChuzItems.Gunblade.StepCount=75..}] add ChuzItems.TiredStep

# リセット
    scoreboard players reset @s Chuz.Temporary