# Copyright 1999-2022 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# : $

EAPI=8

DESCRIPTION="USB Floppy Disk formatting tool"
HOMEPAGE="https://github.com/tedigh/ufiformat"
SRC_URI="https://github.com/tedigh/$PN/archive/refs/tags/v$PV.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="sys-fs/e2fsprogs"
DEPEND=${RDEPEND}
