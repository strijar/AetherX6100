################################################################################
#
#  Aether-Radio's X6100 base control library
#
################################################################################

AETHER_X6100_CONTROL_VERSION = 8daa52bab749dd6469fbb9994517ff4900092ca8
AETHER_X6100_CONTROL_SOURCE = $(AETHER_X6100_CONTROL_VERSION).tar.gz
AETHER_X6100_CONTROL_SITE = https://github.com/AetherRadio/X6100Control/archive
AETHER_X6100_CONTROL_LICENSE = GPLv2

AETHER_X6100_CONTROL_INSTALL_STAGING = YES

$(eval $(cmake-package))
