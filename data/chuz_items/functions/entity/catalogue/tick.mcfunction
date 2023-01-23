#> chuz_items:entity/catalogue/tick
#
# カタログのメイン処理
#
# @within function chuz_items:tick

# 開閉
    # 既に開いていない場合、近くに誰かいたら開く
        execute if entity @s[tag=!ChuzItems.Entity.Catalogue.InUse,tag=!ChuzItems.Entity.Catalogue.Wait] if entity @p[distance=..3] run function chuz_items:entity/catalogue/open
    # 既に開いている場合、誰もいなくなったら閉じる
        execute if entity @s[tag=ChuzItems.Entity.Catalogue.InUse] unless entity @p[distance=..3] run function chuz_items:entity/catalogue/close

# 使用中
    execute if entity @s[tag=ChuzItems.Entity.Catalogue.InUse] run function chuz_items:entity/catalogue/in_use

# 置いたすぐは開けない
    scoreboard players add @s[tag=ChuzItems.Entity.Catalogue.Wait] ChuzItems.CoolTime 1
    tag @s[scores={ChuzItems.CoolTime=20..}] remove ChuzItems.Entity.Catalogue.Wait 
    scoreboard players reset @s[scores={ChuzItems.CoolTime=20..}] ChuzItems.CoolTime

# 回収
    # 下をどかされると消える
        execute if block ~ ~-1 ~ #chuz_items:no_collision run function chuz_items:entity/catalogue/destroyed
    # スニークで片づける 
        execute if entity @p[predicate=chuz_items:sneak,distance=..5] run scoreboard players add @s ChuzItems.Tick 1
        execute if score @s ChuzItems.Tick matches 0.. unless entity @p[predicate=chuz_items:sneak,distance=..5] run scoreboard players reset @s ChuzItems.Tick
        execute if score @s ChuzItems.Tick matches 20.. run function chuz_items:entity/catalogue/destroyed
