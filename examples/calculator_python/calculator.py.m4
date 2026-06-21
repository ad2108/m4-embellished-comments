HEADER

SUBSECTION(Define Calculator)
def calculator():
  COMMENT(Endless Loop)
  while True:
    val = input(":> ")
dnl # eval is quoted, because eval is a buildin m4 function
    print(`eval(val)')

MAINSECTION(Main)
calculator()

EOF

