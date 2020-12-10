#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/172.30.1.2/g' package/base-files/files/bin/config_generate


# 添加argon主题
rm -rf package/lean/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git  package/lean/luci-theme-argon


# dockerman添加
git clone https://github.com/lisaac/luci-app-dockerman package/lean/luci-app-dockerman


# hello world依赖
git clone https://github.com/jerrykuku/lua-maxminddb.git package/lean/lua-maxminddb

# hello world
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lean/luci-app-vssr
