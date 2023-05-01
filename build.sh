set -e

export CFLAGS="-fPIC"
cd src

export CC=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/armv7a-linux-androideabi21-clang
export CXX=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/armv7a-linux-androideabi21-clang++

./configure --prefix=../build/armv7a/
make
make install
make clean


export CC=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang
export CXX=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang++

./configure --prefix=../build/aarch64/
make
make install
make clean

export CC=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/i686-linux-android21-clang
export CXX=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/i686-linux-android21-clang++

./configure --prefix=../build/i686/
make
make install
make clean

export CC=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android21-clang
export CXX=~/Android/Sdk/ndk/25.2.9519653/toolchains/llvm/prebuilt/linux-x86_64/bin/x86_64-linux-android21-clang++

./configure --prefix=../build/x86_64/
make
make install
make clean

cd ..
