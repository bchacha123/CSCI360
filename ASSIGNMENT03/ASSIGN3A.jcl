//KC03C9C JOB ,'BRAYAN CHACHA G.',MSGCLASS=H
//JSTEP01  EXEC PGM=ASSIST
//STEPLIB  DD DSN=KC00NIU.ASSIST.LOADLIB,DISP=SHR
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
******************************************************************
*                                                                *
*  CSCI 360               ASSIGNMENT 3              SUMMER 2020  *
*                                                                *
*  DATE DUE:  07/03/2020                                         *
*  TIME DUE:  11:59 PM                                           *
*                                                                *
*  Replace KC03nnn above with your KC-ID assigned to you by      *
*  your instructor.  DO NOT LEAVE OUT THE CAPITAL LETTER A AT    *
*  THE END OF YOUR KC-ID!  Also, put your name in all capital    *
*  letters in the first line where it says 'your name here'.     *
*                                                                *
*  Note that this documentation box does not go past column 65!  *
*                                                                *
******************************************************************
*        COL. 10
*        |     COL. 16
*        |     |
*        v     v
ASSIGN3A CSECT
         USING ASSIGN3A,15     ESTABLISH ADDRESSABILITY ON REG 15
*
         L     2,FIRST     LOAD THE CONTENTS OF FIRST INTO R2
         L     3,SECOND    LOAD THE CONTENTS OF SECOND INTO R3
*
*LOADING REGISTERS 4 AND 5 FOR THE ADDITION
*
         L     4,FIRST     LOAD THE CONTENTS OF FIRST INTO R4
         L     5,SECOND    LOAD THE CONTENTS OF SECOND INTO R5
*
         SR    3,2         SUBTRACTION OF SECOND FROM FIRST
         AR    4,5         ADDITION OF FIRST AND SECOND
*
         XDUMP ,           DUMP CONTENTS OF ALL 16 REGS
*
         BCR   B'1111',14  UNCONDITIONAL RETURN TO CALLER (OS)
*
FIRST    DC    F'97'       DECLARING FIRST FULLWORD
SECOND   DC    F'33'       DECLARING SECOND FILLWORD
*
         LTORG             LITERAL ORGANIZATION
*
         END   ASSIGN3A
/*
//