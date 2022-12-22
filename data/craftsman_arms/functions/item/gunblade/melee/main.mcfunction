
# ステップ
    execute unless score @s[scores={S.Rif_RClick=0..}] S.Rif_Sneak matches 0.. if entity @s[nbt={OnGround:1b}] run function craftsman_arms:item/gunblade/melee/step/main
    # ステップパーティクル
        execute if entity @s[tag=S.Rif_Steping] run function craftsman_arms:item/gunblade/melee/step/particle
    # 着地で解除
        execute if entity @s[tag=S.Rif_Steping,nbt={OnGround:1b}] unless entity @s[scores={S.Rif_RClick=1..}] run function craftsman_arms:item/gunblade/melee/landing

# チャージ
    execute if score @s S.Rif_Sneak matches 1.. run function craftsman_arms:item/gunblade/charge
    # チャージスマッシュ
        execute if score @s[scores={S.Rif_RClick=0..}] S.Rif_Charge matches 30.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function craftsman_arms:item/gunblade/melee/charge_smash/main
    # 弾切れ
        execute if score @s[scores={S.Rif_RClick=0..}] S.Rif_Charge matches 30.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function craftsman_arms:item/shotgun/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} unless score @s S.Rif_Sneak matches 0.. run scoreboard players add @s S.Rif_Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} run scoreboard players reset @s S.Rif_Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s S.Rif_Ready matches 30.. run function craftsman_arms:item/gunblade/reload/reloading

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function craftsman_arms:item/replaceitem

# チャージ値リセット
    execute unless score @s S.Rif_Sneak matches 1.. run scoreboard players reset @s S.Rif_Charge