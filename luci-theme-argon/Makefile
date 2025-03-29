#
# Copyright (C) 2008-2019 Jerrykuku
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

LUCI_TITLE:=Argon Theme
LUCI_DEPENDS:=+curl +jsonfilter
PKG_VERSION:=2.3.2
PKG_RELEASE:=20250207

CONFIG_LUCI_CSSTIDY:=

include $(TOPDIR)/feeds/luci/luci.mk

# 强制默认启用插件和依赖项
define Package/luci-theme-argon/config
    select PACKAGE_luci-theme-argon
    select PACKAGE_curl
    select PACKAGE_jsonfilter
endef

# call BuildPackage - OpenWrt buildroot signature