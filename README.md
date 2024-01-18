# Understanding Null in dart 

> Dart's null saftey is sound. Meaning when dart determines that a variable is non-nullable, that variable is always non-nullable. 
>
>Many other programming languages have unsound null saftey and in many cases still need to perform runtime checks. Dart shares sound null saftey with Swift.

>Control flow analysis is a static analysis technique used in programming language theory and compilers to analyze and understand the possible paths that a program's control flow can take. It involves examining how control flows through different parts of the program, including loops, conditionals, and branches.
>
>Control flow analysis is really good for detecting null problems within local variables and parameters but when it comes to fields, instance field, static fields, top-level varialbes control flow doesnot work very well.

