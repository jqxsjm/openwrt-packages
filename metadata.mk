# �ļ���openwrt-packages/metadata.mk

# �����߼���ǿ�����ò��
define Package/feeds-override
  define FeedDefaultEnable
	echo "CONFIG_PACKAGE_luci-theme-argon=y" >> $$(TOPDIR)/.config
  endef
endef

# Ӧ�����ã������﷨�����ⱻ��ǰ������
$(eval $(call FeedDefaultEnable))