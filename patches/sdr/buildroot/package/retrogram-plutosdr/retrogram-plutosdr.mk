################################################################################
#
# retrogram-plutosdr
#
################################################################################

RETROGRAM_VERSION = b677a6440441114b8fc38365ccfdb28e87640916
#RETROGRAM_SOURCE = retrogram-plutosdr.git
RETROGRAM_SITE = https://github.com/r4d10n/retrogram-plutosdr
RETROGRAM_SITE_METHOD = git
RETROGRAM_INSTALL_STAGING = YES
RETROGRAM_INSTALL_TARGET = NO
#RETROGRAM_CONF_OPTS = -DBUILD_DEMOS=ON
#RETROGRAM_DEPENDENCIES = libglib2 host-pkgconf

$(eval $(cmake-package))
