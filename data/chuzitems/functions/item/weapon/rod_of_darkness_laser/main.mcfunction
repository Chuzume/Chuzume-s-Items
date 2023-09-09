#> chuzitems:item/weapon/rod_of_darkness_laser/main
#
# 
#
# @within function chuzitems:item/weapon/rod_of_darkness_laser/trigger


# クリック判定召喚
    function chuzitems:player/click_detection/main

# タグによってサウンドを鳴らす
    execute if entity @s[tag=Chuz.Click.Left] anchored eyes run function chuzitems:item/weapon/rod_of_darkness_laser/event/left/shoot
    execute if entity @s[tag=Chuz.Click.Right] run function chuzitems:item/weapon/rod_of_darkness_laser/event/right/

# ロックオン
    tag @e[tag=HogeLock] remove HogeLock
    execute positioned ^ ^ ^10 at @e[tag=Test,distance=..8,sort=nearest,limit=1] run particle composter ~ ~2.5 ~ 0 0 0 0 1
    execute positioned ^ ^ ^20 at @e[tag=Test,distance=..8,sort=nearest,limit=1] run particle composter ~ ~2.5 ~ 0 0 0 0 1
    execute positioned ^ ^ ^10 run tag @e[tag=Test,distance=..8,sort=nearest,limit=1] add HogeLock
    execute positioned ^ ^ ^20 run tag @e[tag=Test,distance=..8,sort=nearest,limit=1] add HogeLock