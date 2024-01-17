#> chuzitems:entity/projectile/ricochet_glaive/tick/quick_return
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/

# サウンド
    execute at @p[tag=Chuz.ID.Target] run playsound minecraft:block.note_block.bit player @p ~ ~ ~ 2 2

# 即座に帰ってくる
    scoreboard players set @s Chuz.Range 0

# タグ付与
    tag @s add ChuzItems.Glaive.Recalled