
# ストレージ
    execute as @a at @s run function chuz_items:player/tick

# 飛び道具チェック 
    execute as @e[type=#chuz_items:projectile,tag=Chuz.Projectile] at @s run function chuz_items:entity/projectile/check

# カタログ
    execute as @e[type=armor_stand,tag=ChuzItems.Entity.Catalogue] at @s run function chuz_items:entity/catalogue/tick

# スライムを消す
    execute as @e[type=magma_cube,tag=Chuz.CollisionSlime] at @s run function chuz_items:entity/col_slime/main

# スコアID
    execute as @a unless score @s Chuz.PlayerID matches 0.. run function chuz_items:score_id

# UUIDヒット後のリアクション
    execute as @e[type=!#chuz_items:unhurtable,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,tag=Chuz.HitReact,nbt={HurtTime:10s}] at @s run function chuz_items:hitreact 

# やぶ氏のリコイルライブラリ
    function yv_recoil:tick

# リセット
    scoreboard players reset @a[scores={ChuzItems.Sneak=0..}] ChuzItems.Sneak
    scoreboard players reset @a[scores={ChuzItems.Crossbow=1..}] ChuzItems.Crossbow
    scoreboard players reset @a[scores={ChuzItems.FungusStick=0..}] ChuzItems.FungusStick
    scoreboard players reset @a[scores={ChuzItems.KnowledgeBook=1..}] ChuzItems.KnowledgeBook