#> craftsman_arms:install/check
#
# インストールチェック
#
# @within advancement craftsman_arms:entered_world


execute unless data storage chuz:storage S.Rif_Install run function craftsman_arms:install/main
data modify storage chuz:storage S.Rif_Install set value 1