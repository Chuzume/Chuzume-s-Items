
# ストレージ
    execute as @a at @s run function chuz_items:storage

# 飛び道具チェック 
    execute as @e[type=#chuz_items:projectile,tag=S.Rif_Projectile] at @s run function chuz_items:entity/projectile_check

# 動くやつ
    execute as @e[type=area_effect_cloud,tag=Mover] at @s run function chuz_items:entity/great_sword/main_mover

# 動くやつ
    execute as @e[type=armor_stand,tag=S.Rif_Sweep] at @s run function chuz_items:entity/great_sword/sweep/main

# スライムを消す
    execute as @e[type=magma_cube,tag=S.Rif_Slime] at @s run function chuz_items:entity/col_slime/main

# スコアID
    execute as @a unless score @s Chuz_Pl.ID matches 0.. run function chuz_items:score_id

# UUIDヒット後のリアクション
    execute as @e[type=!#chuz_items:unhurtable,tag=Chuz.HitReact,nbt={HurtTime:10s}] at @s run function chuz_items:hitreact 

# 敵キャラテスト
    execute as @e[type=pillager,tag=S.Rif_Shotgunner] at @s run function chuz_items:entity/shotgun_pillager/main

# リセット
    scoreboard players reset @a[scores={S.Rif_Sneak=0..}] S.Rif_Sneak
    scoreboard players reset @a[scores={S.Rif_Shot=1..}] S.Rif_Shot
    scoreboard players reset @a[scores={S.Rif_RClick=0..}] S.Rif_RClick
    scoreboard players reset @a[scores={S.Rif_RClickBook=1..}] S.Rif_RClickBook