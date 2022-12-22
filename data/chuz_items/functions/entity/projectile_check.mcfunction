
# 弾丸の種類を判別
    execute if entity @s[tag=ChuzItems.Bullet] run function chuz_items:entity/bullet/tick

    execute if entity @s[tag=ChuzItems.Shell] run function chuz_items:entity/shell/tick

    execute if entity @s[tag=ChuzItems.Grenade] run function chuz_items:entity/grenade/tick

    execute if entity @s[tag=ChuzItems.Shell_Enemy] run function chuz_items:entity/shell_enemy/tick

    execute if entity @s[tag=ChuzItems.GreatSword] run function chuz_items:entity/great_sword/main

# 