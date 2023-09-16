#> chuzitems:common/reload/check_have_ammo
#
# そもそも弾丸持ってる？
#
# @within function
#   chuzitems:item/**
#   chuzitems:common/throw_item/start_reload

# ヘビー
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Heavy_Bullet} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Heavy_Bullet}} 0
# ショットシェル
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Shotshell} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Shotshell}} 0
# エクスプローシブ
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Explosive_Cartridge} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Explosive_Cartridge}} 0
# ライト
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Light_Bullet} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Light_Bullet}} 0

# 上でチェックに成功したらタグ付与
    execute if score $HaveAmmo Chuz.Temporary matches 1 run function chuzitems:common/reload/start with storage chuz:context Item.Mainhand.tag.ChuzData

# 弾丸を消費しないモードなら、上記全部無視してタグ付与
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 0 run function chuzitems:common/reload/start with storage chuz:context Item.Mainhand.tag.ChuzData

# タグ付与できてなかったらメッセージ出す
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 if score $HaveAmmo Chuz.Temporary matches 0 run title @s actionbar {"text":"| 弾丸を持っていません |","color":"red"}
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 1 if score $HaveAmmo Chuz.Temporary matches 0 run playsound minecraft:block.stone_button.click_on player @s ~ ~ ~ 2 1.5

# リセット
    scoreboard players reset $HaveItems Chuz.Temporary