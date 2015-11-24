.PHONY: build publish

build: PKGBUILD
	makepkg -f

publish: build
	scp -P52571 *.xz simendsjo@simendsjo.me:/opt/public_www_files/simendsjo/archrepo
	# Remember to add the file to the repository at the server
