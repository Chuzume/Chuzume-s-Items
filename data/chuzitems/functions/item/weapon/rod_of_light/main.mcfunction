#> chuzitems:item/weapon/rod_of_light/main
#
# 
#
# @within function chuzitems:item/weapon/rod_of_light/trigger

#> テスト用
# @private
    #declare tag SneakTest

# クリック判定召喚
    function chuzitems:player/click_detection/main

# タグによってサウンドを鳴らす
    execute if entity @s[tag=Chuz.Click.Left] anchored eyes positioned ^-0.25 ^ ^ run function chuzitems:item/weapon/rod_of_light/left/shoot

    execute if entity @s[tag=Chuz.Click.Right] run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2

# ロックオン
    tag @e[tag=HogeLock] remove HogeLock
    execute positioned ^ ^ ^10 at @e[tag=Test,distance=..8,sort=nearest,limit=1] run particle composter ~ ~2.5 ~ 0 0 0 0 1
    execute positioned ^ ^ ^20 at @e[tag=Test,distance=..8,sort=nearest,limit=1] run particle composter ~ ~2.5 ~ 0 0 0 0 1
    execute positioned ^ ^ ^10 run tag @e[tag=Test,distance=..8,sort=nearest,limit=1] add HogeLock
    execute positioned ^ ^ ^20 run tag @e[tag=Test,distance=..8,sort=nearest,limit=1] add HogeLock