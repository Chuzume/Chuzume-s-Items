#> chuzitems:item/techkit_revomachine_gun/mainhand/reload/
#
# 
#
# @within function chuzitems:player/macro/mainhand

# スコア増やしてく、一定値で完了
    scoreboard players add @s ChuzItems.Reload 1
    execute if score @s ChuzItems.Reload matches 60.. run function chuzitems:item/techkit_revomachine_gun/mainhand/reload/finish

# 音
    execute if score @s ChuzItems.Reload matches 10 run playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 10 run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 2

    execute if score @s ChuzItems.Reload matches 20 run playsound minecraft:entity.allay.item_given player @a ~ ~ ~ 1 2
    execute if score @s ChuzItems.Reload matches 20 run playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 2

    execute if score @s ChuzItems.Reload matches 55 run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 2