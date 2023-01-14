#> chuz_items:load
#
# ロード処理
#
# @within tag/function minecraft:load

# 他のライブラリに必要なものもこっから呼び出してやる
    function csr_score_damage:core/init
    function score_to_health:load
    function forward_spreader:core/load
    function oh_my_dat:sys/load
    function yv_recoil:load

# スコアボード作成
    scoreboard objectives add ChuzItems.DropReload minecraft.dropped:minecraft.crossbow {"text":"イベント: クロスボウ投げ捨て"}
    scoreboard objectives add ChuzItems.Sneak minecraft.custom:sneak_time {"text":"イベント: スニーク"}
    scoreboard objectives add ChuzItems.Crossbow minecraft.used:crossbow {"text":"イベント: クリック クロスボウ使用"}
    scoreboard objectives add ChuzItems.FungusStick minecraft.used:warped_fungus_on_a_stick {"text":"イベント: クリック キノコ付きの棒"}
    scoreboard objectives add ChuzItems.KnowledgeBook minecraft.used:knowledge_book {"text":"イベント: クリック 知恵の本"}
    scoreboard objectives add ChuzItems.CoolTime dummy
    scoreboard objectives add ChuzItems.Charge dummy
    scoreboard objectives add ChuzItems.Reload dummy
    scoreboard objectives add ChuzItems.Ready dummy
    scoreboard objectives add ChuzItems.Recursive dummy
    scoreboard objectives add ChuzItems.Spread dummy
    scoreboard objectives add ChuzItems.Remove dummy
    scoreboard objectives add ChuzItems.Recoil dummy
    scoreboard objectives add ChuzItems.Recoil.Change dummy
    scoreboard objectives add ChuzItems.Burst dummy

#> リコイルのスコアボード
    scoreboard objectives add ChuzItems.Recoil.ScopedRifle dummy
    scoreboard objectives add ChuzItems.Recoil.Shotgun dummy
    scoreboard objectives add ChuzItems.Recoil.GrenadeLauncher dummy
    scoreboard objectives add ChuzItems.Recoil.Gunblade dummy

#> ものは試しよ
    scoreboard objectives add RecoilTest0 dummy
    scoreboard objectives add RecoilTest1 dummy
    scoreboard objectives add ChuzItems.RecoilSaveX dummy
    scoreboard objectives add ChuzItems.RecoilSaveY dummy
    scoreboard objectives add ChuzItems.RecoilFirstX dummy
    scoreboard objectives add ChuzItems.RecoilFirstY dummy

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

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    execute unless entity @e[type=marker,tag=Chuz.Vector0] run summon marker 0 0 0 {Tags:["Chuz.Vector0"]}
    
# チャンク読み込み
    forceload add 100000 100000

# シュル箱
    execute unless block 100001 0 100000 light_blue_shulker_box run setblock 100001 0 100000 light_blue_shulker_box
    execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock

# 時たま使い回されるスコアボード
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Col_Check_Temp dummy
    scoreboard objectives add Chuz.Calc dummy
    scoreboard objectives add Chuz.Rule dummy
    scoreboard objectives add Chuz.ItemCheck dummy

# 飛び道具の弾速
    scoreboard objectives add Chuz.Range dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Recursion dummy

# モーション関連
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy
    scoreboard objectives add Chuz.F.Check_X dummy
    scoreboard objectives add Chuz.F.Check_Y dummy
    scoreboard objectives add Chuz.F.Check_Z dummy

# ダメージ受けたときのやつ
    scoreboard objectives add Chuz.HitCheck dummy
    
# スコアIDだ
    scoreboard objectives add Chuz.PlayerID.Core dummy
    scoreboard objectives add Chuz.PlayerID dummy
    scoreboard objectives add Chuz.EntityID dummy
    #scoreboard objectives add Chuz_Mo.ID dummy

# 時たま使い回されるチーム
    team add NoCollision
    team modify NoCollision collisionRule never

# ルールが存在してなかったら定義
    execute unless score $ChuzItems.Setting1 Chuz.Rule = $ChuzItems.Setting1 Chuz.Rule run scoreboard players set $ChuzItems.Setting1 Chuz.Rule 1
    execute unless score $ChuzItems.Setting2 Chuz.Rule = $ChuzItems.Setting2 Chuz.Rule run scoreboard players set $ChuzItems.Setting2 Chuz.Rule 0
