#> chuzitems:load
#
# ロード処理
#
# @within tag/function minecraft:load

# 他のライブラリに必要なものもこっから呼び出してやる
    function forward_spreader:core/load
    function oh_my_dat:sys/load
    function yv_recoil:load
    function yv_reflection:load

#> スコアボード作成
    scoreboard objectives add ChuzItems.Drop minecraft.custom:minecraft.drop {"text":"イベント: 投げ捨て"}
    scoreboard objectives add ChuzItems.Sneak minecraft.custom:sneak_time {"text":"イベント: スニーク"}
    scoreboard objectives add ChuzItems.Crossbow minecraft.used:crossbow {"text":"イベント: クリック クロスボウ使用"}
    scoreboard objectives add ChuzItems.FungusStick minecraft.used:warped_fungus_on_a_stick {"text":"イベント: クリック キノコ付きの棒"}
    scoreboard objectives add ChuzItems.KnowledgeBook minecraft.used:knowledge_book {"text":"イベント: クリック 知恵の本"}
    scoreboard objectives add ChuzItems.Trade minecraft.custom:minecraft.talked_to_villager {"text":"イベント: 村人と話す"}
    scoreboard objectives add ChuzItems.Jump minecraft.custom:minecraft.jump {"text":"イベント: ジャンプ"}
    scoreboard objectives add ChuzItems.Death deathCount {"text":"イベント: 死亡"}
    scoreboard objectives add ChuzItems.CoolTime dummy
    scoreboard objectives add ChuzItems.Charge dummy
    scoreboard objectives add ChuzItems.Reload dummy
    scoreboard objectives add ChuzItems.Ready dummy
    scoreboard objectives add ChuzItems.Recursive dummy
    scoreboard objectives add ChuzItems.Spread dummy
    scoreboard objectives add ChuzItems.Remove dummy
    scoreboard objectives add ChuzItems.Recoil dummy
    scoreboard objectives add ChuzItems.Recoil.Change dummy
    scoreboard objectives add ChuzItems.BurstCount dummy
    scoreboard objectives add ChuzItems.BurstRate dummy
    scoreboard objectives add ChuzItems.ModelSpin dummy
    scoreboard objectives add ChuzItems.Tick dummy
    scoreboard objectives add ChuzItems.FallResist dummy
    scoreboard objectives add ChuzItems.FallResistTime dummy

#> その他なんか分類しづらいもの
    scoreboard objectives add ChuzItems.Revo.Magazine dummy
    scoreboard objectives add ChuzItems.Gunblade.StepCount dummy
    scoreboard objectives add ChuzItems.PhotonGlaive.GlideCount dummy
    scoreboard objectives add ChuzItems.Projectile.Charge dummy
    scoreboard objectives add ChuzItems.Count dummy

#> 固定数値
    scoreboard objectives add Chuz.Const dummy
    scoreboard players set $31743 Chuz.Const 31743
    scoreboard players set $65536 Chuz.Const 65536
    scoreboard players set $1 Chuz.Const 1
    scoreboard players set $2 Chuz.Const 2
    scoreboard players set $3 Chuz.Const 3
    scoreboard players set $4 Chuz.Const 4
    scoreboard players set $5 Chuz.Const 5
    scoreboard players set $6 Chuz.Const 6
    scoreboard players set $7 Chuz.Const 7
    scoreboard players set $8 Chuz.Const 8
    scoreboard players set $9 Chuz.Const 9
    scoreboard players set $10 Chuz.Const 10
    scoreboard players set $40 Chuz.Const 40

#> Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=marker,tag=Chuz.Vector0] run summon marker 0 0 0 {Tags:["Chuz.Vector0"]}
    
#> チャンク読み込み
    forceload add 100000 100000

#> シュル箱
    execute unless block 100001 -64 100000 light_blue_shulker_box run setblock 100001 -64 100000 light_blue_shulker_box
    execute unless block 100001 -63 100000 bedrock run setblock 100001 -63 100000 bedrock

#> チーム
    # 衝突判定無効
        team add Chuz.NoCollision
        team modify Chuz.NoCollision collisionRule never

#> 時たま使い回されるスコアボード
    scoreboard objectives add Chuz.Death deathCount {"text":"イベント: 死亡"}
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Chuz.Calc dummy
    scoreboard objectives add Chuz.Rule dummy
    scoreboard objectives add Chuz.ItemCheck dummy
    scoreboard objectives add Chuz.Motion.Power dummy
    scoreboard objectives add Chuz.Motion.Gamerule dummy
    scoreboard objectives add Chuz.Motion.Difficulty dummy
    scoreboard objectives add Chuz.PosDiffY dummy
    scoreboard objectives add Chuz.PosSaveY dummy

# 飛び道具の弾速
    scoreboard objectives add Chuz.Range dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Recursion dummy


# ダメージ受けたときのやつ
    scoreboard objectives add Chuz.HitCheck dummy
    
# スコアIDだ
    scoreboard objectives add Chuz.PlayerID.Core dummy
    scoreboard objectives add Chuz.PlayerID dummy
    scoreboard objectives add Chuz.EntityID dummy

# ルールが存在してなかったら定義
    execute unless score $Gamerule.AmmoRequire Chuz.Rule = $Gamerule.AmmoRequire Chuz.Rule run scoreboard players set $Gamerule.AmmoRequire Chuz.Rule 1
    execute unless score $Gamerule.Griefing Chuz.Rule = $Gamerule.Griefing Chuz.Rule run scoreboard players set $Gamerule.Griefing Chuz.Rule 0
    execute unless score $Gamerule.Recoil Chuz.Rule = $Gamerule.Recoil Chuz.Rule run scoreboard players set $Gamerule.Recoil Chuz.Rule 0
