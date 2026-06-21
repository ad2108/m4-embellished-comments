HEADER
MODULE(stdio);

SUBSECTION(System)
SYSTEM;
  stdout: StdOut;
  stdin:  StdIn;

SUBSECTION(Problem)
PROBLEM;

SUBSECTION(StdIn and StdOut)
  SPC stdout DATION OUT SYSTEM ALPHIC;
  SPC stdin  DATION IN  SYSTEM ALPHIC;
  DCL TERM   DATION OUT ALPHIC DIM(*,80) FORWARD STREAM CREATED(stdout);
  DCL INP    DATION IN  ALPHIC DIM(*,80) FORWARD STREAM CREATED(stdin);

SUBSECTION(Semaphores)
  DCL (OUT_SEMA, IN_SEMA) SEMA PRESET(1,1);

SUBSECTION(Procedure Print)
  COMMENT(This procedure prints a char-array of size 80)
  PRINT: PROC(TEXT CHAR(80));
    RELEASE OUT_SEMA;
    OPEN TERM;
    PUT TEXT TO TERM BY A, SKIP;
    CLOSE TERM;
    REQUEST OUT_SEMA;
  END;

SUBSECTION(Procedure Read Text)
  COMMENT(This procedure reads a char-array of size 80 from stdin)
  READ_CHAR: PROC RETURNS(CHAR(30));
    DCL NAME CHAR(30);

    REQUEST IN_SEMA;
    OPEN INP;
    GET NAME FROM INP BY A;
    CLOSE INP;
    RELEASE IN_SEMA;

    RETURN(NAME);
  END;

MAINSECTION(Main)
  COMMENT(This Task reads a name and prints Hello name to stdout)
  START: TASK MAIN;
    DCL NAME CHAR(30);

    CALL PRINT('Enter your name:');
    NAME := READ_CHAR;
    CALL PRINT('Hello, ' >< NAME);
  END;

MODEND;

EOF

