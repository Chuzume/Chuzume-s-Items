#> chuzitems:entity/projectile/ricochet_glaive/tick/quick_return/
#
# 
#
# @within function chuzitems:entity/projectile/ricochet_glaive/tick/

# サウンド
    execute unless score @s ChuzItems.Projectile.Charge matches 1 at @p[tag=Chuz.ID.Target] run playsound minecraft:block.note_block.bit player @p ~ ~ ~ 2 2

# 即座に帰ってくる
    scoreboard players set @s Chuz.Range 0

# チャージ1の場合、爆発する
    execute if score @s ChuzItems.Projectile.Charge matches 1 run function chuzitems:entity/projectile/photon_glaive/tick/quick_return/discharge

# タグ付与
    tag @s add ChuzItems.Glaive.Recalled