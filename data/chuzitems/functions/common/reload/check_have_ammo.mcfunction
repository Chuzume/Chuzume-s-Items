#> chuzitems:common/reload/check_have_ammo
#
# そもそも弾丸持ってる？
#
# @within function
#   chuzitems:item/**
#   chuzitems:common/throw_item/start_reload

# ヘビー
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Heavy_Bullet} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Heavy_Bullet}} 0
# ショットシェル
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Shotshell} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Shotshell}} 0
# エクスプローシブ
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Explosive_Cartridge} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Explosive_Cartridge}} 0
# ライト
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Light_Bullet} store success score $HaveAmmo Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Light_Bullet}} 0

# 上でチェックに成功したらタグ付与
    execute if score $HaveAmmo Chuz.Temporary matches 1 run tag @s add ChuzItems.ReloadStart

# 弾丸を消費しないモードなら、上記全部無視してタグ付与
    execute if score $Gamerule.AmmoRequire Chuz.Rule matches 0 run tag @s add ChuzItems.ReloadStart

# タグ付与できてなかったらメッセージ出す
    title @s[tag=!ChuzItems.ReloadStart] actionbar {"text":"| 弾丸を持っていません |","color":"red"}
    playsound minecraft:block.stone_button.click_on player @s[tag=!ChuzItems.ReloadStart] ~ ~ ~ 2 1.5

# リセット
    scoreboard players reset $HaveItems Chuz.Temporary