chmod +x bin/sign2a
chmod +x bin/ring
chmod +x bin/ring2exe
chmod +x bin/ringpm

if [ -f lib/libring.dylib ];
then
ln -sf "`pwd`/bin/sign2a" /usr/local/bin/sign2a
xattr -d com.apple.quarantine /usr/local/bin/sign2a
fi

if [ -f lib/libring.so ];
then
sudo ln -sf "`pwd`/bin/sign2a" /usr/bin/sign2a
fi

