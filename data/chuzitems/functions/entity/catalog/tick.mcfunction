#> chuzitems:entity/catalog/tick
#
# カタログのメイン処理
#
# @within function chuzitems:tick

# 開閉
    # 既に開いていない場合、近くに誰かいたら開く
        execute if entity @s[tag=!ChuzItems.Entity.Catalog.InUse,tag=!ChuzItems.Entity.Catalog.Wait] if entity @p[distance=..3] run function chuzitems:entity/catalog/open
    # 既に開いている場合、誰もいなくなったら閉じる
        execute if entity @s[tag=ChuzItems.Entity.Catalog.InUse] unless entity @p[distance=..3] run function chuzitems:entity/catalog/close

# 使用中
    execute if entity @s[tag=ChuzItems.Entity.Catalog.InUse] run function chuzitems:entity/catalog/in_use

# 置いたすぐは開けない
    scoreboard players add @s[tag=ChuzItems.Entity.Catalog.Wait] ChuzItems.CoolTime 1
    tag @s[scores={ChuzItems.CoolTime=20..}] remove ChuzItems.Entity.Catalog.Wait 
    scoreboard players reset @s[scores={ChuzItems.CoolTime=20..}] ChuzItems.CoolTime

# サウンド
    execute if entity @a[scores={ChuzItems.Trade=1..}] run playsound chuzume:cyber19_1 player @a ~ ~ ~ 0.5 1

# 回収
    # 下をどかされると消える
        execute if block ~ ~-1 ~ #chuzitems:no_collision run function chuzitems:entity/catalog/destroyed
    # スニークで片づける 
        execute if entity @p[predicate=chuzitems:sneak,distance=..5] run scoreboard players add @s ChuzItems.Tick 1
        execute if score @s ChuzItems.Tick matches 0.. unless entity @p[predicate=chuzitems:sneak,distance=..5] run scoreboard players reset @s ChuzItems.Tick
        execute if score @s ChuzItems.Tick matches 20.. run function chuzitems:entity/catalog/destroyed
