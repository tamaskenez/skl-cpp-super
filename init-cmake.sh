if [[ -z $1 ]]; then
  echo "Usage: init-cmake.sh <cmake-generator>"
  exit 1
fi

echo "CMAKE_GENERATOR: $1"

cmake -H. -Bb -DCMAKE_INSTALL_PREFIX=$PWD/o -DCMAKE_PREFIX_PATH=$PWD/o -G "$1"
