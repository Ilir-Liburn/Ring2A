if [ ! -d "backup" ]; then
mkdir backup
cd backup
mkdir tools
cd tools
mkdir ring2exe
cp ../../tools/ring2exe/ring2exe.ring ring2exe
cd ..
mkdir libraries
cd libraries
mkdir stdlib
cp ../../libraries/stdlib/stdlibcore.ring stdlib
cd ..
mkdir lib
cp ../lib/libringstatic.a lib
cp ../lib/libring.so lib
mkdir bin
cp ../bin/ring bin
cp ../bin/ring2exe bin
cp ../bin/ringpm bin
cd ..
else
cd backup
cp tools/ring2exe/ring2exe.ring ../tools/ring2exe
cp libraries/stdlib/stdlibcore.ring ../libraries/stdlib
cp lib/libringstatic.a ../lib
cp lib/libring.so ../lib
cp bin/ring ../bin
chmod +x ../bin/ring
cp bin/ring2exe ../bin
chmod +x ../bin/ring2exe
cp bin/ringpm ../bin
chmod +x ../bin/ringpm
cd ..
rm bin/sign2a
fi
