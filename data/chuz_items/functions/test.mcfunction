# 後ろに飛んでいく
    scoreboard players set @s Chuz.Speed 15
    execute facing entity @p feet run function chuz_items:entity/motion_xz
    scoreboard players reset @s Chuz.Speed