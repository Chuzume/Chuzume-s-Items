#> chuzitems:player/tick
#
# プレイヤーが常に実行してる処理
#
# @within function chuzitems:tick

## タグなど
    function chuzitems:player/manage_tag

## お願いOhMyDat!
    function oh_my_dat:please

## データ取得
    function chuzitems:get_data/

# リロード用データ
   # 削除
       #data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HoldedItem
   # 書き換え / Modify  
       #data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HoldedItem set from storage chuz:context Item.Mainhand
# 保存してみる
   #data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Item.Mainhand set from storage chuz:context Item.Mainhand
# インタラクションの削除
   kill @e[type=interaction,tag=Chuz.Entity.Interaction]
# アイテムの処理
    #function #chuzitems:item/tick

# 手持ちを実行
    function chuzitems:player/macro/

# リロード
    execute if entity @s[scores={ChuzItems.Drop=0..}] run function chuzitems:common/throw_item/main

# 指向性ジャンプブーツ
    execute if data storage chuz:context Item.Inventory[{Slot:100b}].tag.ChuzData{ItemID:Directional_Jump_Boots} run function chuzitems:item/armor/directional_jump_boots/main

# テスト斧
    #execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:TestAxe} run function chuzitems:item/weapon/testaxe/main

# 共通処理
    # アイテムが変わったら状態リセット
        execute if entity @s[scores={Chuz.ItemCheck=1}] run function chuzitems:item/score_reset

    # ヘッドショットに成功
        execute if entity @s[tag=ChuzItems.HeadShot] run function chuzitems:common/headshot/success

    # クールタイム処理
        scoreboard players remove @s[scores={ChuzItems.CoolTime=1..}] ChuzItems.CoolTime 1
        # リセット
            execute if score @s ChuzItems.CoolTime matches 0 run function chuzitems:player/cooltime_end

    # オフハンドに入れると戻ってくる
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{NoOffhand:true} run function chuzitems:item/no_offhand
        
# 一般的なリセット
    function chuzitems:player/reset