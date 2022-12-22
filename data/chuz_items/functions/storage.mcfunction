
# 取得
    function chuz_items:get_data/

# スコープライフル
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run function chuz_items:item/scoped_rifle/main

# ショットガン
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun} run function chuz_items:item/shotgun/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun_Reload} run function chuz_items:item/shotgun/reload/main

# グレネードランチャー
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Grenade_Launcher} run function chuz_items:item/grenade_launcher/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Grenade_Launcher_Reload} run function chuz_items:item/grenade_launcher/reload/main

# ガンブレード
    # 銃モード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Ranged} run function chuz_items:item/gunblade/ranged/main
    # 剣モード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Melee} run function chuz_items:item/gunblade/melee/main
    # オフハンドに入れると変形する
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:Craftsman_Gunblade} in overworld run function chuz_items:item/gunblade/switch

# グレートソード
    # タグ付与
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Forgesoul_Greatsword} run tag @s add S.Rif_HoldGreatSword
    # メイン
     execute if entity @s[tag=S.Rif_HoldGreatSword] run function chuz_items:item/great_sword/main

# タグ削除
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Forgesoul_Greatsword} run tag @s remove S.Rif_HoldGreatSword

# 共通処理
    # アイテムが変わったら状態リセット
        execute if entity @s[scores={Chuz.ItemCheck=1}] run function chuz_items:item/score_reset

    # オフハンドに入れると戻ってくる
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{NoOffhand:true} run function chuz_items:item/no_offhand