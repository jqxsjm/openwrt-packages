# 文件：openwrt-packages/Makefile

# 定义仓库包（空包，仅用于触发配置）
include $(TOPDIR)/rules.mk

PKG_NAME:=jqxsjm-defaults
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  SECTION:=meta
  CATEGORY:=jqxsjm
  TITLE:=Default enable packages
  MAINTAINER:=jqxsjm <mazhanao@gmail.com>
endef

# 核心逻辑：写入默认配置
define Build/Configure
    $(call FeedDefaultEnable)
endef

define FeedDefaultEnable
    echo "CONFIG_PACKAGE_luci-theme-argon=y" >> $(TOPDIR)/.config
endef

$(eval $(call BuildPackage,$(PKG_NAME)))