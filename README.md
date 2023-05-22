# NVidia Jetson AARCH64 Toolchain

Contains a copy of the NVidia Jetson aarch64 build toolchain for compiling
the [wildnode-kernel](https://github.com/waggle-sensor/wildnode-kernel) and [wildnode-cboot](https://github.com/waggle-sensor/wildnode-cboot).

Source: [https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%20Linux%20Driver%20Package%20Development%20Guide/xavier_toolchain.html](https://docs.nvidia.com/jetson/l4t/index.html#page/Tegra%20Linux%20Driver%20Package%20Development%20Guide/xavier_toolchain.html)

> Note: this repository uses [`git lfs`](https://git-lfs.com/) so be sure the machine you are cloning this repository to supports [`git lfs`](https://git-lfs.com/).

## Set up `git lfs`

- 0). Do not clone this repository if `git lfs` is not set up yet. Otherwise, the file `gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz` won't be checked out.
- 1). Open [Git Large File Storage (LFS)](https://git-lfs.com/).
- 2). Click [`Install v3.3.0 via PackageCloud (Linux)`](https://packagecloud.io/github/git-lfs/install).
- 3). Use the step in `quick install`. Note that this only sets up the Debian APT respository and doesn't actually install the `git-lfs` package.
- 4). Once the script says "The repository is setup! You can now install packages.", run `sudo apt-get install git-lfs` according to [git-lfs/git-lfs/wiki/Installation](https://github.com/git-lfs/git-lfs/wiki/Installation).
- 5). Then `git lfs install`.
- 6). Then clone this repository. The file `gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz` will be fully checked out.

## Usage

Extract the Toolchain

```
mkdir $HOME/l4t-gcc
cd $HOME/l4t-gcc
tar xf gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu.tar.xz
```

Set the CROSS_COMPILE environment variable

```
export CROSS_COMPILE=$HOME/l4t-gcc/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
```
