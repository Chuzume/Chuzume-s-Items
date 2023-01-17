#> yv_reflection:reflection/sound

# グリーン
    execute if block ~ ~ ~ #yv_reflection:green run playsound minecraft:block.azalea.break neutral @a ~ ~ ~ 2 1.2

# バンカー
    execute if block ~ ~ ~ #yv_reflection:bunker run playsound minecraft:block.sand.break neutral @a ~ ~ ~ 2 1.2

# デフォ
    execute unless block ~ ~ ~ #yv_reflection:green unless block ~ ~ ~ #yv_reflection:bunker run playsound minecraft:entity.armor_stand.fall neutral @a ~ ~ ~ 2 2
