# Ring2A
Accelerated Ring 1.18 (on 1.17 distro!) + language enhancements

1. Run Backup script inside the Ring folder to make backup of the Ring executables, libraries, etc.
2. Unzip archive matching your operating system to Ring folder (extract here)
3. Run Chmod2A script to set execute permissions (Windows excluded)
4. Run install.sh in bin directory if necessary (Windows excluded) 
5. Run Backup script again to restore offical Ring files
6. Repeat steps 2-5 to switch between Ring2A and Ring

# Ring2A+

Brings language enhancements to the Ring2A by adding:

1. Hybrid lists/arrays where array is allocated by initial size of the list. As long you don't modify elements under intial size, array is kept intact. You are free to add elements to the list, insert or remove them, but only in position after the initial size of the list in order to keep array alive
2. Protection against accidental change of the referenced string. Take a look under samples/Language/Strings/stringref.ring. Modify sample by uncommenting (one line at the time) to see how Ring2A+ prevents string modification
3. Short jumps on the user request. Take a look under samples/UsingRayLib/more/ex5_wavingcubes_nosync(for-in-loop).ring where "next x1" or "next x2" instructs VM to jump right into the loop body. In other words, to not re-evaluate data[1] or data[2] (first value taken is final). This sample also demonstrates creation of the multidimensional array where function arguments are limited only by the number of instruction parameters or by the stack size

* Update

If you want to turn enitire list into array after adding elements to it, use ringvm_genarray function. Unless already generated, binarysearch function will do the same. Be careful: ~~if you do this using Ring2A, and then you add elements and try to access them, you might get VM crashed or random data fetched~~ due to flaw existing in Ring originally. Ring2A prevents such scenario because hybrid list/array takes item from the list if index is outside of the internal array bounds.

* Update2

Ring2A now prevents failures after adding elements to the list having internal array generated after ringvm_genarray or binarysearch functions are used by simply deleting the array. Ring2A+ doesn't have to do that because it checks internal array bounds.
