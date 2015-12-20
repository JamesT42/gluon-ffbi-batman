include $(TOPDIR)/rules.mk

PKG_NAME:=gluon-ffbi-batman
PKG_VERSION:=1

PKG_BUILD_DIR := $(BUILD_DIR)/$(PKG_NAME)

include $(GLUONDIR)/include/package.mk

define Package/gluon-ffbi-batman
  SECTION:=gluon
  CATEGORY:=Gluon
  TITLE:=Support for batman-adv meshing in ffbi
  DEPENDS:=+gluon-core +gluon-client-bridge +firewall +libiwinfo-lua
endef

define Build/Prepare
	mkdir -p $(PKG_BUILD_DIR)
endef

define Build/Configure
endef

define Build/Compile
endef

define Package/gluon-ffbi-batman/install
	$(CP) ./files/* $(1)/
endef

define Package/gluon-ffbi-batman/postinst
#!/bin/sh
$(call GluonCheckSite,check_site.lua)
endef


$(eval $(call BuildPackage,gluon-ffbi-batman))
