
# 弾丸の種類を判別
    execute if entity @s[tag=S.Rif_Bullet] run function craftsman_arms:entity/bullet/tick

    execute if entity @s[tag=S.Rif_Shell] run function craftsman_arms:entity/shell/tick

    execute if entity @s[tag=S.Rif_Grenade] run function craftsman_arms:entity/grenade/tick

    execute if entity @s[tag=S.Rif_Shell_Enemy] run function craftsman_arms:entity/shell_enemy/tick

    execute if entity @s[tag=S.Rif_GreatSword] run function craftsman_arms:entity/great_sword/main

# 