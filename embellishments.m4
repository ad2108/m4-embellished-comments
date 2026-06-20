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
define(`SEPARATOR_A',`COMMENT_SIGN_START ---------------------------------------------------------------------- COMMENT_SIGN_END')dnl
define(`SEPARATOR_B',`COMMENT_SIGN_START >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> COMMENT_SIGN_END')dnl
define(`SEPARATOR_C',`COMMENT_SIGN_START ><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><>< COMMENT_SIGN_END')dnl
define(`SEPARATOR_D',`COMMENT_SIGN_START ********************************************************************** COMMENT_SIGN_END')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Big Section with 2 different Separatortypes
dnl # ------------------------------------------------------------------
dnl
define(`SECTION',`SEPARATOR_A
SEPARATOR_B
COMMENT_SIGN_START $1 COMMENT_SIGN_END
SEPARATOR_B
SEPARATOR_A')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Subsection with one Separatortype
dnl # ------------------------------------------------------------------
dnl
define(`SUBSECTION',`SEPARATOR_A
COMMENT_SIGN_START $1 COMMENT_SIGN_END
SEPARATOR_A')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Mainsection with two Separatortypes
dnl # ------------------------------------------------------------------
dnl
define(`MAINSECTION',`SEPARATOR_A
SEPARATOR_B
SEPARATOR_A
COMMENT_SIGN_START $1 COMMENT_SIGN_END
SEPARATOR_A')dnl
dnl
dnl # ------------------------------------------------------------------
dnl # Simple Header with Project Information and 2 Separatortypes
dnl # ------------------------------------------------------------------
dnl
define(`HEADER',`SECTION(PROJECT_NAME)
COMMENT_SIGN_START Author:   AUTHORNAME COMMENT_SIGN_END
COMMENT_SIGN_START Date:     DATE COMMENT_SIGN_END
COMMENT_SIGN_START Version:  VERSION COMMENT_SIGN_END
COMMENT_SIGN_START License:  LICENSE COMMENT_SIGN_END
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
