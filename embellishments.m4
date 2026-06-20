dnl # ------------------------------------------------------------------
dnl # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
dnl # Embelishments
dnl # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
dnl # ------------------------------------------------------------------
dnl
dnl # ------------------------------------------------------------------
dnl # Simple Separators
dnl # ------------------------------------------------------------------
dnl
define(`SEPARATOR_A',`COMMENT_SIGN ----------------------------------------------------------------------')dnl
define(`SEPARATOR_B',`COMMENT_SIGN >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>')dnl
define(`SEPARATOR_C',`COMMENT_SIGN ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Big Section with 2 different Separatortypes
dnl # ------------------------------------------------------------------
dnl
define(`SECTION',`SEPARATOR_A
SEPARATOR_B
COMMENT_SIGN $1
SEPARATOR_B
SEPARATOR_A')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Subsection with one Separatortype
dnl # ------------------------------------------------------------------
dnl
define(`SUBSECTION',`SEPARATOR_A
COMMENT_SIGN $1
SEPARATOR_A')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Mainsection with two Separatortypes
dnl # ------------------------------------------------------------------
dnl
define(`MAINSECTION',`SEPARATOR_A
SEPARATOR_B
SEPARATOR_A
COMMENT_SIGN $1
SEPARATOR_A')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Simple Header with Project Information and 2 Separatortypes
dnl # ------------------------------------------------------------------
dnl
define(`HEADER',`SECTION(PROJECT_NAME)
COMMENT_SIGN Author:   AUTHORNAME
COMMENT_SIGN Date:     DATE
COMMENT_SIGN Version:  VERSION
COMMENT_SIGN License:  LICENSE
SEPARATOR_A')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # End of File
dnl # ------------------------------------------------------------------
dnl
define(`EOF',`SECTION(End of file)')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
dnl # End of File
dnl # >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
dnl # ------------------------------------------------------------------
dnl
