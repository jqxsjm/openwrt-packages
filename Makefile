# �ļ���openwrt-packages/Makefile

# ����ֿ�����
PKG_NAME:=jqxsjm-custom
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(TOPDIR)/rules.mk

# �����߼����� jqxsjm.config �ϲ��� OpenWrt �� .config
define Package/$(PKG_NAME)/config
    $(shell cat $(CURDIR)/config/jqxsjm.config >> $(TOPDIR)/.config)
endef

$(eval $(call BuildPackage,jqxsjm-custom))