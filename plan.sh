pkg_name=devicemapper
pkg_origin=core
pkg_version="2.03.11"
pkg_description="The Device-mapper is a component of the linux kernel (since version 2.6) that supports logical volume management."
pkg_upstream_url="https://sourceware.org/lvm2/"
pkg_dirname="LVM2.${pkg_version}"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=('Apache-2.0')
pkg_source="https://mirrors.kernel.org/sourceware/lvm2/releases/LVM2.${pkg_version}.tgz"
pkg_shasum="842c4510d4653990927d4518a5bf2743126a37531671a05842cdaf8d54bb9dd4"
pkg_build_deps=(
  core/gcc
  core/make
)
pkg_deps=(
  core/glibc
  core/libaio
)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_bin_dirs=(sbin)
pkg_pconfig_dirs=(lib/pkgconfig)

do_build() {
    ./configure --prefix="$pkg_prefix" --enable-pkgconfig
    make
}
