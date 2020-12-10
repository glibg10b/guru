# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit qmake-utils

DESCRIPTION="Add64 is a realtime additive/subtractive-synthesis softsynth"
HOMEPAGE="https://sourceforge.net/projects/add64 http://linuxsynths.com/Add64PatchesDemos/add64.html"
SRC_URI="mirror://sourceforge/project/add64/Add64-${PV}.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc ~ppc64 ~x86"
IUSE="+presets"

RDEPEND="
	dev-qt/qtcore:5
	media-libs/alsa-lib
	virtual/opengl
	virtual/jack
"
DEPEND="${RDEPEND}"

S="${WORKDIR}/Add64-${PV}/"

src_configure(){
	eqmake5
	default
}

src_install(){
	dobin "${S}/Add64"
	insinto /usr/share/add64/
	doins "${S}/Add64-MIDIconfig" || die "can't install MIDIconfig"
	if use presets; then
		insinto /usr/share/add64/Add64Presets
		doins "${S}"/Add64Presets/* || die "can't install presets"
	fi
}
