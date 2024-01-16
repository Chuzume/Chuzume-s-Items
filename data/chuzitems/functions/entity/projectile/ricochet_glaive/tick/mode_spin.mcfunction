#> chuzitems:entity/projectile/ricochet_glaive/tick/mode_spin
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/

# スコアなかったらセット
    execute unless score @s ChuzItems.Tick matches 0.. run scoreboard players set @s ChuzItems.Tick 0

# 回る
    # メインハンド
        execute if score @s[tag=!ChuzItems.Model.Glaive.Off] ChuzItems.Tick matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:-2.094f}}}
        execute if score @s[tag=!ChuzItems.Model.Glaive.Off] ChuzItems.Tick matches 3 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:-4.188f}}}
        execute if score @s[tag=!ChuzItems.Model.Glaive.Off] ChuzItems.Tick matches 6 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:-6.282f}}}
    # オフハンド
        execute if score @s[tag=ChuzItems.Model.Glaive.Off] ChuzItems.Tick matches 0 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:2.094f}}}
        execute if score @s[tag=ChuzItems.Model.Glaive.Off] ChuzItems.Tick matches 3 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:4.188f}}}
        execute if score @s[tag=ChuzItems.Model.Glaive.Off] ChuzItems.Tick matches 6 run data merge entity @s {start_interpolation:0,interpolation_duration:3,transformation:{right_rotation:{axis:[0.0f,1.0f,0.0f],angle:6.282f}}}

# Tick加算
    scoreboard players add @s ChuzItems.Tick 1

# リセット
    scoreboard players set @s[scores={ChuzItems.Tick=9..}] ChuzItems.Tick 0