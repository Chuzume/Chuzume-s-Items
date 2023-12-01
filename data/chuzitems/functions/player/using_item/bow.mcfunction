#> chuzitems:player/using_item/bow
#
# 弓を使っている間タグ付与
#


# タグをつけて進捗剥奪 タグ削除は実行処理のところでやる
    tag @s add Chuz.Using.Bow
    advancement revoke @s only chuzitems:using_check/bow