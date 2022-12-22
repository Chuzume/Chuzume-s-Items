
# ストレージ
    execute as @a at @s run function chuz_items:storage

# 飛び道具チェック 
    execute as @e[type=#chuz_items:projectile,tag=ChuzItems.Projectile] at @s run function chuz_items:entity/projectile_check

# 動くやつ
    execute as @e[type=area_effect_cloud,tag=Mover] at @s run function chuz_items:entity/great_sword/main_mover

# 動くやつ
    execute as @e[type=armor_stand,tag=ChuzItems.Sweep] at @s run function chuz_items:entity/great_sword/sweep/main

# スライムを消す
    execute as @e[type=magma_cube,tag=ChuzItems.Slime] at @s run function chuz_items:entity/col_slime/main

# スコアID
    execute as @a unless score @s Chuz_Pl.ID matches 0.. run function chuz_items:score_id

# UUIDヒット後のリアクション
    execute as @e[type=!#chuz_items:unhurtable,tag=Chuz.HitReact,nbt={HurtTime:10s}] at @s run function chuz_items:hitreact 

# 敵キャラテスト
    execute as @e[type=pillager,tag=ChuzItems.Crossbowgunner] at @s run function chuz_items:entity/shotgun_pillager/main

# リセット
    scoreboard players reset @a[scores={ChuzItems.Sneak=0..}] ChuzItems.Sneak
    scoreboard players reset @a[scores={ChuzItems.Crossbow=1..}] ChuzItems.Crossbow
    scoreboard players reset @a[scores={ChuzItems.FungusStick=0..}] ChuzItems.FungusStick
    scoreboard players reset @a[scores={ChuzItems.FungusStickBook=1..}] ChuzItems.FungusStickBook