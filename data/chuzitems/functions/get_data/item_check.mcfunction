
# 最新のものかチェックし、最新じゃなければ取得
    execute store result score $NotLatestData Chuz.Temporary run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DataCache.ItemCheck.Time set from storage global Time
    execute if score $NotLatestData Chuz.Temporary matches 1 unless data storage chuz:context Item.Mainhand run data modify storage chuz:context Item.Mainhand set value {}
    execute if score $NotLatestData Chuz.Temporary matches 1 store success score @s Chuz.ItemCheck run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OldMainhand set from storage chuz:context Item.Mainhand.tag.ChuzData.ItemID
