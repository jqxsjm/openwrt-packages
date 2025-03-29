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

define Package/luci-theme-argon/config
    config PACKAGE_luci-theme-argon
        bool "Enable Argon Theme"
        default y
        select PACKAGE_luci-compat
endef

# call BuildPackage - OpenWrt buildroot signature
