
# ステップ
    execute unless score @s[scores={ChuzItems.FungusStick=0..}] ChuzItems.Sneak matches 0.. if entity @s[nbt={OnGround:1b}] run function chuzitems:item/gunblade/melee/step/main
    # ステップパーティクル
        execute if entity @s[tag=ChuzItems.Steping] run function chuzitems:item/gunblade/melee/step/particle
    # 着地で解除
        execute if entity @s[tag=ChuzItems.Steping,nbt={OnGround:1b}] unless entity @s[scores={ChuzItems.FungusStick=1..}] run function chuzitems:item/gunblade/melee/landing

# チャージ
    execute if score @s ChuzItems.Sneak matches 1.. run function chuzitems:item/gunblade/charge
    # チャージスマッシュ
        execute if score @s[scores={ChuzItems.FungusStick=0..}] ChuzItems.Charge matches 30.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/gunblade/melee/charge_smash/main
    # 弾切れ
        execute if score @s[scores={ChuzItems.FungusStick=0..}] ChuzItems.Charge matches 30.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function chuzitems:item/shotgun/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} unless score @s ChuzItems.Sneak matches 0.. run scoreboard players add @s ChuzItems.Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} run scoreboard players reset @s ChuzItems.Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s ChuzItems.Ready matches 30.. run function chuzitems:item/gunblade/reload/reloading

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function chuzitems:item/replaceitem

# チャージ値リセット
    execute unless score @s ChuzItems.Sneak matches 1.. run scoreboard players reset @s ChuzItems.Charge