#!/bin/bash

# Make sure that the arguments make sense. 
if [ $# -ne 2 ]; then
    echo "Usage: ./update-meta-layer <build dir> <revision #>"
    exit 1
fi

# TODO: Validate that the build dir makes sense by making sure a file exists. 

git diff > diff.patch

# Add the patch to the qemu recipe
cp templates/qemu-dm_1.4.0.bb qemu-dm_1.4.0.bb
echo 'SRC_URI += "file://diff.patch;striplevel=2"' >> qemu-dm_1.4.0.bb
echo "" >> qemu-dm_1.4.0.bb
echo PR = "\"\${INC_PR}.$2\"" >> qemu-dm_1.4.0.bb

# Add the patch to the qemu stubdomain recipe
cp templates/qemu-dm-stubdom_1.4.0.bb qemu-dm-stubdom_1.4.0.bb 
echo 'SRC_URI += "file://diff.patch;striplevel=2"' >> qemu-dm-stubdom_1.4.0.bb
echo "" >> qemu-dm-stubdom_1.4.0.bb
echo PR = "\"\${INC_PR}.$2\"" >> qemu-dm-stubdom_1.4.0.bb

# Copy over the new patches to the meta layer
rm -f $1/build/repos/meta-qemu-1.4-oxt/recipes-openxt/qemu-dm/qemu-dm-1.4.0/diff.patch
cp -f diff.patch $1/build/repos/meta-qemu-1.4-oxt/recipes-openxt/qemu-dm/qemu-dm-1.4.0/

# Copy over the new recipe
cp -f qemu-dm_1.4.0.bb $1/build/repos/meta-qemu-1.4-oxt/recipes-openxt/qemu-dm/
cp -f qemu-dm-stubdom_1.4.0.bb $1/build/repos/meta-qemu-1.4-oxt/recipes-openxt/qemu-dm/

# Cleanup
rm -f diff.patch
rm -f qemu-dm_1.4.0.bb
rm -f qemu-dm-stubdom_1.4.0.bb
