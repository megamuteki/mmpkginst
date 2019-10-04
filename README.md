# This is desktop afater installer.
Linux MINT XFCE or Linux KDE Neon (User Edition)

### Installing Debian package ###

If you're using Debian or a derived distro, such as Ubuntu, and are installing
a release, please use the .deb package. If you're not using a Debian-based
distro, or the .deb package didn't work, you can install the driver using
DKMS, or manually, as described below.

### Installing from source ###

Source is either an unpacked release tarball (.tar.gz file), an unpacked
source code archive downloaded from GitHub (.zip file), or source code checked
out from Git.

Before installing from source in any way, make sure you have the headers for
your kernel installed (on Debian-based systems):

    sudo apt-get install -y "linux-headers-$(uname -r)"

or (on Fedora-based systems):

    sudo dnf install -y "kernel-devel-uname-r == $(uname -r)"

If you get "Error: Unable to find a match" from the above command, make sure
your kernel is up-to-date, and if not, update it and try again.

#### Installing from source with DKMS ####

DKMS (Dynamic Kernel Module Support) is a system for installing out-of-tree
Linux kernel modules, such as DIGImend kernel drivers. It helps make sure the
modules are built with correct kernel headers and are properly installed, and
also automatically reinstalls the modules when the kernel is updated.

Installing with DKMS is the recommended way of installing development versions
of DIGImend kernel drivers.

To install with DKMS, make sure you have the `dkms` package installed (on
Debian-based distros):

    sudo apt-get install -y dkms

or (on Fedora-based distros):

    sudo dnf install -y dkms

After that, run the following command from the source directory to install:

    sudo make dkms_install

Watch for any errors in the output, and if the drivers installed successfully,
they will be automatically rebuilt and reinstalled each time the kernel is
updated.

#### Installing from source manually ####
