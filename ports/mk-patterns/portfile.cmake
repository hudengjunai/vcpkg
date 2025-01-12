vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO mpark/patterns
    REF b3270e0dd7b6312f7a4fe8647e2333dbb86e355e
    SHA512 ca8062b92cf0d5874aba7067615ff8cb089c22cb921d6131762a8dcb2f50d4f47d80c59b62b1c9b7e70dae2dfb68a44c2a4feeb78ab5e5473e0fbdd089538314
    HEAD_REF master
)

file(INSTALL
    "${SOURCE_PATH}/include/"
    DESTINATION "${CURRENT_PACKAGES_DIR}/include/"
)

file(INSTALL "${SOURCE_PATH}/LICENSE.md" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright )

