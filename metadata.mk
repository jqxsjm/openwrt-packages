# 文件：openwrt-packages/metadata.mk

# 核心逻辑：强制启用插件
define Package/feeds-override
  define FeedDefaultEnable
	echo "CONFIG_PACKAGE_luci-theme-argon=y" >> $$(TOPDIR)/.config
  endef
endef

# 应用配置（特殊语法，避免被提前解析）
$(eval $(call FeedDefaultEnable))