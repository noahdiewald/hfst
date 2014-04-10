all: check package

check:
	namcap PKGBUILD

package:
	makepkg --source -c

clean:
	rm -f *.tar.gz
