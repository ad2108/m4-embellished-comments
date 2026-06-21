# M4 Preprocessor Embelishments for Coding

This repository provides simple embellishments for code comments. To use them, the setup.m4 file must be configured with the relevant project information. After updating this file and creating a source file that includes the required m4-macros, a ready-to-use file can be generated as follows:

```bash
m4 setup.m4 embellishments.m4 code_file > output_file
```

## Macros

The following m4 macros are defined in embellishments.m4. **All macro names are written in uppercase**. In the examples below, COMMENT\_SIGN\_START is //, and COMMENT\_SIGN\_END is empty. SEPARATOR\_1 is -, SEPARATOR\_2 is > and SEPARATOR\_SIZE\_X is 70.

### COMMENT(comment)

```cpp
COMMENT(This is a comment)

// This is a comment  
```

### SEP(char,number)

```cpp
SEP(-,70)

----------------------------------------------------------------------
```

### SEPARATOR(char,number)

```cpp
SEPARATOR(-,70)

// ----------------------------------------------------------------------
```

### SEPARATOR\_X

```cpp
A. // ----------------------------------------------------------------------
B. // >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
C. // ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><
D. // **********************************************************************
```

### SECTION(<name>)

```cpp
SECTION(Example Section)

// ----------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Example Section
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// ----------------------------------------------------------------------
```

### SUBSECTION(<name>)

```cpp
SUBSECTION(Example Section)

// ----------------------------------------------------------------------
// Example Subsection
// ----------------------------------------------------------------------
```

### MAINSECTION(<name>)

```cpp
MAINSECTION(Example Section)

// ----------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// ----------------------------------------------------------------------
// Example Mainsection
// ----------------------------------------------------------------------
```

### HEADER

```cpp
HEADER

// ----------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// Hello World
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// ----------------------------------------------------------------------
// Author:   ad2108
// Date:     21.06.2026
// Version:  1.0.0
// License:  MIT
// ----------------------------------------------------------------------
```

### EOF

```cpp
EOF

// ----------------------------------------------------------------------
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// End of File
// >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
// ----------------------------------------------------------------------
```

## Example

A simple example can be found in the examples directory.

