
# 飛び道具チェック 
    execute as @e[type=#chuzitems:projectile,tag=Chuz.Projectile] at @s run function chuzitems:entity/projectile/event/tick

# ビームエミッター
    execute as @e[type=marker,tag=BeamEmitter] at @s run function chuzitems:entity/beam_emitter/tick

# ビームルーン
    execute as @e[type=item_display,tag=BeamRune] at @s run function chuzitems:entity/beam_rune/tick

# でけぇ魔法陣
    execute as @e[type=item_display,tag=BigRune] at @s run function chuzitems:entity/big_rune/tick

# 魔法エフェクトテスト
    execute as @e[type=item_display,tag=ChuzItems.Effect.Magic] at @s run function chuzitems:entity/effect/magic/tick

# 魔法エフェクトテスト
    execute as @e[type=item_display,tag=ChuzItems.Effect.Lockon] at @s run function chuzitems:entity/effect/lockon_marker/tick

# カタログ
    execute as @e[type=armor_stand,tag=ChuzItems.Entity.Catalog] at @s run function chuzitems:entity/catalog/tick

## プレイヤーへのメイン処理
    execute as @a at @s run function chuzitems:player/tick

# スライムを消す
    execute as @e[type=magma_cube,tag=Chuz.CollisionSlime] at @s run function chuzitems:entity/col_slime/main

# スコアID
    execute as @a unless score @s Chuz.PlayerID matches 0.. run function chuzitems:score_id

# UUIDヒット後のリアクション
    execute as @e[type=!#chuzitems:unhurtable,tag=Chuz.HitReact,tag=!Chuz.PlayerShouldInvulnerable,tag=!Chuz.Uninterferable,nbt={HurtTime:10s}] at @s run function chuzitems:hitreact 

# やぶ氏のリコイルライブラリ
    function yv_recoil:tick