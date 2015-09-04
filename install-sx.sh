set -x
cmake b/sx -DCMAKE_BUILD_TYPE=Debug
cmake --build b/sx --target install --config Debug
cmake b/sx -DCMAKE_BUILD_TYPE=Release
cmake --build b/sx --target install --config Release
