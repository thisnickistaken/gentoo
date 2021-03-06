# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR=LBROCARD
MODULE_VERSION=0.31
inherit perl-module

DESCRIPTION="Support versions 1 and 2 of JSON::XS"

SLOT="0"
KEYWORDS="~amd64 ~x86 ~x86-solaris"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-perl/JSON-XS"
DEPEND="
	test? (
		${RDEPEND}
		dev-perl/Test-Pod
	)"

SRC_TEST=do
