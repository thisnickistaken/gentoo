# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999
#hackport: flags: example:examples

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Network Stack"
HOMEPAGE="https://hackage.haskell.org/package/hans"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RESTRICT=test # some test did not survive QC-2.10 (unicode string generator)

RDEPEND="dev-haskell/boundedchan:=[profile?]
	>=dev-haskell/cereal-0.5.0.0:=[profile?]
	dev-haskell/cryptonite:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/heaps:=[profile?]
	dev-haskell/memory:=[profile?]
	dev-haskell/monadlib:=[profile?]
	dev-haskell/psqueues:=[profile?]
	dev-haskell/random:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	test? ( dev-haskell/quickcheck
		>=dev-haskell/tasty-0.11
		dev-haskell/tasty-ant-xml
		dev-haskell/tasty-quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples examples)
}
