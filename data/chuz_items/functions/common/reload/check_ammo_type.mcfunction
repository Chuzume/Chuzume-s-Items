#> chuz_items:common/reload/check_ammo_type
#
# 弾薬タイプを見てからclearする
#
# @within function chuz_items:common/reload/**

# ヘビー
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Heavy_Bullet} store success score $ConsumeSuccess Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Heavt_Bullet}} 1
# ショットシェル
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Shotshell} store success score $ConsumeSuccess Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Shotshell}} 1
# エクスプローシブ
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Explosive_Cartridge} store success score $ConsumeSuccess Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Explosive_Cartridge}} 1
# ライト
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammotype:Light_Bullet} store success score $ConsumeSuccess Chuz.Temporary run clear @s chain_command_block{ChuzData:{ItemID:Light_Bullet}} 1
