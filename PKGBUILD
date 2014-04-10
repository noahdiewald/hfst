# Maintainer: Noah Diewald <diewald.me: noah>

pkgname=hfst
pkgver=3.6.1
pkgrel=1
pkgdesc='Helsinki Finite-State Transducer Technology (HFST) tools'
arch=('i686' 'x86_64')
url='http://www.ling.helsinki.fi/kieliteknologia/tutkimus/hfst/'
license=('LGPL')
depends=(libxml2 python)
source=(http://downloads.sourceforge.net/project/hfst/hfst/hfst-${pkgver}.tar.gz)
md5sums=('80309494ad3eab1d781fdbdfdd0acc2f')

build() {
  cd "$srcdir/${pkgname}-${pkgver}"
  ./configure --prefix=/usr --with-unicode-handler=ICU --enable-tagger --enable-calculate --enable-xfst --enable-proc
  make
}

package () {
  cd "$srcdir/$pkgname-$pkgver"
  make DESTDIR=${pkgdir} install
}
