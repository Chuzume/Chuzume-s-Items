
# 空腹度取って分岐
    execute store result score @s Chuz.Temporary run data get entity @s foodLevel
    # バレットステップ
        execute if score @s Chuz.Temporary matches 6.. run function craftsman_arms:item/gunblade/melee/step/bullet
    # バレットステップ
        execute if score @s Chuz.Temporary matches ..5 run function craftsman_arms:item/gunblade/melee/step/weak

# リセット
    scoreboard players reset @s Chuz.Temporary