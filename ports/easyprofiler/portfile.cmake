vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO yse/easy_profiler 
    REF 3104dd4ae7b9930a7c2ba9ed5fdb02f41b1668e4
    SHA512 e80f5414281b791f0cd52aca4277c8bdc11a132fae6adb43f6bbc5f5c6215efef58b63fd62ab5cd4f222267bf079394ae043a550f5fd35bcc04d5f4a5920f5a6
    HEAD_REF master
    PATCHES
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
)

vcpkg_cmake_install()

vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/easy_profiler_core/include/easy/")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/share")

# Handle copyright
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright )

vcpkg_fixup_pkgconfig()
