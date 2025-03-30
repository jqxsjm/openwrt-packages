# 文件：openwrt-packages/Makefile

# 定义仓库名称
PKG_NAME:=jqxsjm-custom
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(TOPDIR)/rules.mk

# 核心逻辑：将 jqxsjm.config 合并到 OpenWrt 的 .config
define Package/$(PKG_NAME)/config
    $(shell cat $(CURDIR)/config/jqxsjm.config >> $(TOPDIR)/.config)
endef

$(eval $(call BuildPackage,jqxsjm-custom))