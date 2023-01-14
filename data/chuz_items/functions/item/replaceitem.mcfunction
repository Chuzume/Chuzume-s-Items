
# リセット
    scoreboard players reset @s Chuz.Temporary

# 置き換え
    loot replace block 100001 0 100000 container.0 loot chuz_items:set_ammo
    execute if score $CMD Chuz.Temporary matches 0.. store result storage chuz:context Item.Mainhand.tag.CustomModelData int 1 run scoreboard players get $CMD Chuz.Temporary
    data modify storage chuz:context Item.Mainhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    data modify storage chuz:context Item.Mainhand.tag.Charged set value 1b
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# リセット
    scoreboard players reset $CMD Chuz.Temporary
