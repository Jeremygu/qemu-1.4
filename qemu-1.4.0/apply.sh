#!/bin/bash +x

git apply ../patches/static-fix.patch
git add .
git commit -m "static-fix.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/ioreq-server-upstream.patch
git add .
git commit -m "ioreq-server-upstream.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/ioreq-server.patch
git add .
git commit -m "ioreq-server.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/logging-syslog.patch
git add .
git commit -m "logging-syslog.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/bridge-helper-syslog.patch
git add .
git commit -m "bridge-helper-syslog.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/dmbus.patch
git add .
git commit -m "dmbus.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/pci-reserve-igd-slot.patch
git add .
git commit -m "pci-reserve-igd-slot.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/switcher.patch
git add .
git commit -m "switcher.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/acpi.patch
git add .
git commit -m "acpi.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/xc-emulated-nic-link-state-propagation.patch
git add .
git commit -m "xc-emulated-nic-link-state-propagation.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/battery.patch
git add .
git commit -m "battery.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/audio-alsa.patch
git add .
git commit -m "audio-alsa.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/xenmou.patch
git add .
git commit -m "xenmou.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/audio-alsa-stub.patch
git add .
git commit -m "audio-alsa-stub.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/atapi-pass-through.patch
git add .
git commit -m "atapi-pass-through.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/vbe-xt-extensions.patch
git add .
git commit -m "vbe-xt-extensions.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/vga-spinlock.patch
git add .
git commit -m "vga-spinlock.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/vga-shadow-bda.patch
git add .
git commit -m "vga-shadow-bda.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/surfman-dcl.patch
git add .
git commit -m "surfman-dcl.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/audio-policy.patch
git add .
git commit -m "audio-policy.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/fix-surfman-coherency.patch
git add .
git commit -m "fix-surfman-coherency.patch" -a
echo "----------------------------------------------------------------------------------"
git apply ../patches/change-default-pixelformat.patch
git add .
git commit -m "change-default-pixelformat.patch" -a
echo "----------------------------------------------------------------------------------"

