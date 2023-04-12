
# Tick更新
    execute store result storage global Time int 1 run time query gametime

# 取得部分
    function chuzitems:get_data/selecteditem
    function chuzitems:get_data/inventory
    function chuzitems:get_data/item_check

# スコアホルダーの掃除
    scoreboard players reset $NotLatestData Chuz.Temporary

# アイテムIDだけ外に出しておく
    data modify storage chuz:context ItemID set from storage chuz:context Item.Mainhand.tag.ChuzData.ItemID
