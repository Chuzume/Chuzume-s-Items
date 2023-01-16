
## データ取得
    function chuz_items:get_data/

## リロード
    execute if entity @s[scores={ChuzItems.DropReload=0..}] run function chuz_items:common/throw_item/main

## スコープライフル
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run function chuz_items:item/scoped_rifle/main

## ショットガン
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun} run function chuz_items:item/shotgun/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun_Reload} run function chuz_items:item/shotgun/reload/main

## グレネードランチャー
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Grenade_Launcher} run function chuz_items:item/grenade_launcher/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Grenade_Launcher_Reload} run function chuz_items:item/grenade_launcher/reload/main

## ガンブレード
    # 銃モード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Ranged} run function chuz_items:item/gunblade/ranged/main
    # 剣モード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Melee} run function chuz_items:item/gunblade/melee/main
    # オフハンドに入れると変形する
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:Craftsman_Gunblade} in overworld run function chuz_items:item/gunblade/switch

## モザンビークショットガン
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Mozambique} run function chuz_items:item/mozambique/main

## ウィングマン
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Wingman} run function chuz_items:item/wingman/main

## TechKit: レヴォマシンガン
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TechKit_Revomachine_Gun} run function chuz_items:item/techkit_revomachine_gun/main

## 共通処理
    # アイテムが変わったら状態リセット
        execute if entity @s[scores={Chuz.ItemCheck=1}] run function chuz_items:item/score_reset

    # ヘッドショットに成功
        execute if entity @s[tag=ChuzItems.HeadShot] run function chuz_items:common/headshot/success

    # オフハンドに入れると戻ってくる
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{NoOffhand:true} run function chuz_items:item/no_offhand