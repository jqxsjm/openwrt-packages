# �ļ���openwrt-packages/Makefile

# ����ֿ�����հ��������ڴ������ã�
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

# �����߼���д��Ĭ������
define Build/Configure
    $(call FeedDefaultEnable)
endef

define FeedDefaultEnable
    echo "CONFIG_PACKAGE_luci-theme-argon=y" >> $(TOPDIR)/.config
endef

$(eval $(call BuildPackage,$(PKG_NAME)))