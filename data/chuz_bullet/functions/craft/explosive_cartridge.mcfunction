# まぁまずはアイテムが必要であろう
    give @p chain_command_block{display:{Name:'{"text":"Explosive Cartridge","color":"white","italic":false}',Lore:['{"text":" "}','{"text":"危険な爆発物カートリッジ。","color":"gray","italic":false}','{"text":"どういうわけか、銃によって爆発が違ったりする。","color":"gray","italic":false}']},CustomModelData:3,ChuzData:{ItemID:Explosive_Cartridge}} 24

# 次回以降も実行するためにレシピ没収
    recipe take @s chuz_bullet:explosive_cartridge

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuz_bullet:craft/explosive_cartridge