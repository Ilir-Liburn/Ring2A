# Ring2A
Accelerated Ring VM + language enhancements

1. Run Backup script inside the Ring folder to make backup of the Ring executables, libraries, etc.
2. Unzip archive matching your operating system to Ring folder (extract here)
3. Run Chmod2A script to set execute permissions (Windows excluded) 
4. Run Backup script again to restore offical Ring files
5. Repeat steps 2-4 to switch between Ring2A and Ring

# Ring2A+

Brings language enhancements to the Ring2A by adding:

1. Hybrid lists/arrays where array is allocated by initial size of the list. As long you don't modify elements under intial size, array is kept intact. You are free to add elements to the list, insert or remove them, but only in position after the initial size of the list in order to keep array alive
2. Protection against accidental change of the referenced string. Take a look under samples/Language/Strings/stringref.ring. Modify sample by uncommenting (one line at the time) to see how Ring2A+ prevents string modification
3. Short jumps on the user request. Take a look under samples/UsingRayLib/more/ex5_wavingcubes_nosync(for-in-loop).ring where "next x1" or "next x2" instructs VM to jump right into the loop body. In other words, to not re-evaluate data[1] or data[2] (first value taken is final). This sample also demonstrates creation of the multidimensional array where function arguments are limimited only by the stack size
