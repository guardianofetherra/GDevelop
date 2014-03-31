#!/bin/sh

echo
echo Tool for updating include directory for debug target.
echo

echo -Copying files...
# rm ../../Binaries/Output/Debug_Linux/CppPlatform/include/*.* -r

# Game Develop C++ Implementation headers
rsync -r -u --include=*.h --include=*/ --exclude=* ../../GDCpp/  ../../Binaries/Output/Debug_Linux/CppPlatform/include/GDCpp/

# Game Develop Core headers
rsync -r -u --include=*.h --include=*/ --exclude=* ../../Core/  ../../Binaries/Output/Debug_Linux/CppPlatform/include/Core/

# Boost (shared_ptr and dependencies) headers
rsync -r -u --include=*.h --include=*.hpp --include=*.inc --include=*.inl --include=*/ --exclude=* ../../ExtLibs/boost/boost/  ../../Binaries/Output/Debug_Linux/CppPlatform/include/boost/boost/

# SFML headers
rsync -r -u --include=*.h --include=*.hpp --include=*.inc --include=*.inl --include=*/ --exclude=* ../../ExtLibs/SFML/include/  ../../Binaries/Output/Debug_Linux/CppPlatform/include/SFML/include/

# Extensions headers
rsync -r -u --include=*.h --include=*.hpp --include=*.inc --include=*.inl --include=*/ --exclude=* ../../Extensions/  ../../Binaries/Output/Debug_Linux/CppPlatform/Extensions/include/

echo
echo -End of copy
echo 
echo -Done
