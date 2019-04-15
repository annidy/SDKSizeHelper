mkdir -p build
cd build
cmake ../dummylib -G Xcode -DCMAKE_TOOLCHAIN_FILE=../ios.toolchain.cmake -DPLATFORM=OS64
cmake --build . --config Release --target install