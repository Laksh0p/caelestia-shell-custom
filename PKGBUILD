pkgname=caelestia-shell-custom
pkgver=4.2.1
pkgrel=1
pkgdesc="Custom Caelestia shell (Laksh fork)"
arch=('x86_64')
license=('GPL-3.0-only')

depends=('qt6-base' 'qt6-declarative')
provides=('caelestia-shell')
conflicts=('caelestia-shell')

source=("git+https://github.com/Laksh0p/caelestia-shell-custom.git")
sha256sums=('SKIP')

build() {
  cmake -B build -S .
  cmake --build build
}

package() {
  DESTDIR="$pkgdir" cmake --install build
}
