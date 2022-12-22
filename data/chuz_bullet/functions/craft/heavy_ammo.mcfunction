# まぁまずはアイテムが必要であろう
    give @p chain_command_block{display:{Name:'{"text":"Heavy Bullet","color":"white","italic":false}',Lore:['{"text":" "}','{"text":"重くて強烈な弾丸。","color":"gray","italic":false}','{"text":"どういうわけか、色々な銃で使える。","color":"gray","italic":false}']},CustomModelData:1,ChuzData:{ItemID:Heavy_Bullet}} 8

# 次回以降も実行するためにレシピ没収
    recipe take @s chuz_bullet:heavy_ammo

# なんだこのチェストは！消えてもらおう
    clear @s chest 1

# 進捗消去
    advancement revoke @s only chuz_bullet:craft/heavy_ammo