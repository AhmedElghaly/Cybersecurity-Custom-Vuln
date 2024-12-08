# Define a custom variable for your project directory
MY_PROJECT_DIR = /home/ahmed/Desktop/OneKey/buildroot-2024.02.8

CUSTOM_VULN_VERSION = 1.1
CUSTOM_VULN_SITE = $(MY_PROJECT_DIR)/package/custom_vuln
CUSTOM_VULN_SITE_METHOD = local

define CUSTOM_VULN_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(CUSTOM_VULN_SITE)/vuln $(TARGET_DIR)/usr/bin/vuln
endef

$(eval $(generic-package))
