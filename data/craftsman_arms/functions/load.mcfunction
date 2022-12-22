#> craftsman_arms:load
#
# ロード処理
#
# @within tag/function minecraft:load


# 他のライブラリに必要なものもこっから呼び出してやる
    function csr_score_damage:core/init
    function score_to_health:load
    function forward_spreader:core/load
    function oh_my_dat:sys/load

# スコアボード作成
    scoreboard objectives add S.Rif_Sneak minecraft.custom:sneak_time
    scoreboard objectives add S.Rif_Shot minecraft.used:crossbow
    scoreboard objectives add S.Rif_RClick minecraft.used:warped_fungus_on_a_stick
    scoreboard objectives add S.Rif_RClickBook minecraft.used:knowledge_book
    scoreboard objectives add S.Rif_Charge dummy
    scoreboard objectives add S.Rif_Reload dummy
    scoreboard objectives add S.Rif_Ready dummy
    scoreboard objectives add S.Rif_Recursive dummy
    scoreboard objectives add S.Rif_Remove dummy
    scoreboard objectives add S.Rif_Burst dummy
    scoreboard objectives add S.Rif_Combo dummy
    scoreboard objectives add S.Rif_ComboWait dummy
    scoreboard objectives add S.Rif_Rotation dummy
    scoreboard objectives add S.Rif_RotSpeed dummy
    scoreboard objectives add S.Rif_RotDistance dummy

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    kill @e[type=area_effect_cloud,tag=Chuz.Vector0]
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
    scoreboard objectives add Chuz_Pl.IDCore dummy
    scoreboard objectives add Chuz_Pl.ID dummy
    scoreboard objectives add Chuz_En.ID dummy
    scoreboard objectives add Chuz_Mo.ID dummy

# 時たま使い回されるチーム
    team add No_Collision
    team modify No_Collision collisionRule never

# ルールが存在してなかったら定義
    execute unless score $S.Rif_Setting1 Chuz.Rule = $S.Rif_Setting1 Chuz.Rule run scoreboard players set $S.Rif_Setting1 Chuz.Rule 1
    execute unless score $S.Rif_Setting2 Chuz.Rule = $S.Rif_Setting2 Chuz.Rule run scoreboard players set $S.Rif_Setting2 Chuz.Rule 0
