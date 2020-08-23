# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"
PYTHON_REQ_USE="sqlite"
PYTHON_COMPAT=( python3_{6,7,8} )

EGIT_REPO_URI="https://github.com/buildbot/buildbot.git"

DISTUTILS_USE_SETUPTOOLS="rdepend"

[[ ${PV} == *9999 ]] && inherit git-r3
inherit distutils-r1

MY_PV="${PV/_p/.post}"
MY_P="${PN}-${MY_PV}"

DESCRIPTION="BuildBot common www build tools for packaging releases"
HOMEPAGE="https://buildbot.net/ https://github.com/buildbot/buildbot https://pypi.org/project/buildbot-pkg/"
[[ ${PV} == *9999 ]] || SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"

if [[ ${PV} == *9999 ]]; then
	KEYWORDS=""
else
	KEYWORDS="~amd64"
fi

# No real integration tests for this pkg.
# all tests are related to making releases and final checks for distribution

S=${WORKDIR}/${MY_P}
