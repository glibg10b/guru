# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.0

EAPI=8

CRATES="
	adler-1.0.2
	aho-corasick-0.7.18
	atty-0.2.14
	autocfg-1.0.1
	base64-0.13.0
	bitflags-1.3.2
	bumpalo-3.9.1
	cc-1.0.72
	cfg-if-1.0.0
	chunked_transfer-1.4.0
	clap-3.0.14
	clap_complete-3.0.6
	clipboard-win-4.4.1
	crc32fast-1.3.1
	directories-4.0.1
	dirs-sys-0.3.6
	endian-type-0.1.2
	errno-0.2.8
	errno-dragonfly-0.1.2
	error-code-2.3.1
	fd-lock-3.0.3
	flate2-1.0.22
	form_urlencoded-1.0.1
	getrandom-0.2.4
	hashbrown-0.11.2
	hermit-abi-0.1.19
	idna-0.2.3
	indexmap-1.8.0
	io-lifetimes-0.4.4
	itoa-1.0.1
	js-sys-0.3.56
	lazy_static-1.4.0
	libc-0.2.117
	linux-raw-sys-0.0.37
	log-0.4.14
	matches-0.1.9
	memchr-2.4.1
	memoffset-0.6.5
	miniz_oxide-0.4.4
	nibble_vec-0.1.0
	nix-0.23.1
	num_threads-0.1.3
	numtoa-0.1.0
	once_cell-1.9.0
	os_str_bytes-6.0.0
	percent-encoding-2.1.0
	proc-macro2-1.0.36
	quote-1.0.15
	radix_trie-0.2.1
	redox_syscall-0.2.10
	redox_termios-0.1.2
	redox_users-0.4.0
	regex-1.5.4
	regex-syntax-0.6.25
	ring-0.16.20
	rustix-0.32.1
	rustls-0.20.2
	rustyline-9.1.2
	ryu-1.0.9
	scopeguard-1.1.0
	sct-0.7.0
	serde-1.0.136
	serde_derive-1.0.136
	serde_json-1.0.78
	smallvec-1.8.0
	smawk-0.3.1
	spin-0.5.2
	str-buf-1.0.5
	strsim-0.10.0
	syn-1.0.86
	termcolor-1.1.2
	terminal_size-0.1.17
	termion-1.5.6
	textwrap-0.14.2
	time-0.3.7
	tinyvec-1.5.1
	tinyvec_macros-0.1.0
	toml-0.5.8
	unicode-bidi-0.3.7
	unicode-linebreak-0.1.2
	unicode-normalization-0.1.19
	unicode-segmentation-1.8.0
	unicode-width-0.1.9
	unicode-xid-0.2.2
	untrusted-0.7.1
	ureq-2.4.0
	url-2.2.2
	utf8parse-0.2.0
	wasi-0.10.2+wasi-snapshot-preview1
	wasm-bindgen-0.2.79
	wasm-bindgen-backend-0.2.79
	wasm-bindgen-macro-0.2.79
	wasm-bindgen-macro-support-0.2.79
	wasm-bindgen-shared-0.2.79
	web-sys-0.3.56
	webpki-0.22.0
	webpki-roots-0.22.2
	winapi-0.3.9
	winapi-i686-pc-windows-gnu-0.4.0
	winapi-util-0.1.5
	winapi-x86_64-pc-windows-gnu-0.4.0
	windows-sys-0.30.0
	windows_aarch64_msvc-0.30.0
	windows_i686_gnu-0.30.0
	windows_i686_msvc-0.30.0
	windows_x86_64_gnu-0.30.0
	windows_x86_64_msvc-0.30.0
"
inherit cargo flag-o-matic

DESCRIPTION="Command-line PeerTube viewer inspired by youtube-viewer"
HOMEPAGE="https://gitlab.com/peertube-viewer/peertube-viewer-rs"
SRC_URI="https://gitlab.com/peertube-viewer/peertube-viewer-rs/-/archive/v${PV}/peertube-viewer-v${PV}.tar.gz
		$(cargo_crate_uris)"
S="${WORKDIR}/${PN}-v${PV}-72e39500dfe826b180e2264fcee5f914aec04fea"
LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="~amd64"
QA_FLAGS_IGNORED=(
	"usr/bin/peertube-viewer-rs"
)

src_prepare() {
	default
	filter-lto
}

src_install() {
	cargo_src_install
	install -Dm644 -t "${D}/usr/share/man/man1" "${S}/${PN}.1"
}
