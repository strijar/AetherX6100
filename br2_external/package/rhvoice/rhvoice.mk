################################################################################
#
#  RHVoice speech synthesizer.
#
################################################################################

RHVOICE_VERSION = ed7bf65b6861281b2a0f168a148200f870036164
RHVOICE_SITE = https://github.com/RHVoice/RHVoice.git
RHVOICE_LICENSE = GPLv2
RHVOICE_SITE_METHOD = git
RHVOICE_GIT_SUBMODULES = YES

RHVOICE_INSTALL_STAGING = YES
RHVOICE_DEPENDENCIES = host-scons

RHVOICE_SCONS_OPTS = \
	prefix=/usr \
	audio_libs=pulse

define RHVOICE_BUILD_CMDS
	(cd $(@D); \
		$(TARGET_CONFIGURE_OPTS) CROSS=$(TARGET_CROSS) \
		$(SCONS) \
		$(RHVOICE_SCONS_OPTS))
endef

define RHVOICE_INSTALL_TARGET_CMDS
	(cd $(@D); \
		$(TARGET_CONFIGURE_OPTS) CROSS=$(TARGET_CROSS) \
		$(SCONS) \
		$(RHVOICE_SCONS_OPTS) DESTDIR=$(TARGET_DIR) \
		install)
endef

define RHVOICE_INSTALL_STAGING_CMDS
	(cd $(@D); \
		$(TARGET_CONFIGURE_OPTS) CROSS=$(TARGET_CROSS) \
		$(SCONS) \
		$(RHVOICE_SCONS_OPTS) DESTDIR=$(STAGING_DIR) \
		install)
endef

$(eval $(generic-package))
