       IDENTIFICATION DIVISION.
       PROGRAM-ID. SQRT-TEST.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *    Test data
           01  INPUT-NUMBER    PIC 9(4)V9(3).
           01  RESULT          PIC 9(4)V9(3).
           01  EXPECTED-RESULT   PIC 9(4)V9(3).
      *    Test stats
           01  TESTS-RUN       PIC 9(2) VALUE ZEROES.
           01  PASSES          PIC 9(2) VALUE ZEROES.
           01  FAILURES        PIC 9(2) VALUE ZEROES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ADD 1 to TESTS-RUN.

           MOVE 0.0 TO INPUT-NUMBER.
           MOVE 0.0 TO EXPECTED-RESULT.

           CALL 'SQRT' USING INPUT-NUMBER, RESULT.

           IF RESULT = EXPECTED-RESULT THEN
               ADD 1 TO PASSES
           ELSE
               DISPLAY 'SQRT-OF-ZERO-TEST FAILED. Expected '
               EXPECTED-RESULT ' but was ' RESULT
               ADD 1 TO FAILURES.


           ADD 1 to TESTS-RUN.

           MOVE 1.0 TO INPUT-NUMBER.
           MOVE 1.0 TO EXPECTED-RESULT.

           CALL 'SQRT' USING INPUT-NUMBER, RESULT.

           IF RESULT = EXPECTED-RESULT THEN
               ADD 1 TO PASSES
           ELSE
               DISPLAY 'SQRT-OF-ONE-TEST FAILED. Expected '
               EXPECTED-RESULT ' but was ' RESULT
               ADD 1 TO FAILURES.


           ADD 1 to TESTS-RUN.

           MOVE 4.0 TO INPUT-NUMBER.
           MOVE 2.0 TO EXPECTED-RESULT.

           CALL 'SQRT' USING INPUT-NUMBER, RESULT.

           IF RESULT = EXPECTED-RESULT THEN
               ADD 1 TO PASSES
           ELSE
               DISPLAY 'SQRT-OF-FOUR-TEST FAILED. Expected '
               EXPECTED-RESULT ' but was ' RESULT
               ADD 1 TO FAILURES.


           ADD 1 to TESTS-RUN.

           MOVE 9.0 TO INPUT-NUMBER.
           MOVE 3.0 TO EXPECTED-RESULT.

           CALL 'SQRT' USING INPUT-NUMBER, RESULT.

           IF RESULT = EXPECTED-RESULT THEN
               ADD 1 TO PASSES
           ELSE
               DISPLAY 'SQRT-OF-NINE-TEST FAILED. Expected '
               EXPECTED-RESULT ' but was ' RESULT
               ADD 1 TO FAILURES.


           ADD 1 to TESTS-RUN.

           MOVE 16.0 TO INPUT-NUMBER.
           MOVE 4.0 TO EXPECTED-RESULT.

           CALL 'SQRT' USING INPUT-NUMBER, RESULT.

           IF RESULT = EXPECTED-RESULT THEN
               ADD 1 TO PASSES
           ELSE
               DISPLAY 'SQRT-OF-SIXTEEN-TEST FAILED. Expected '
               EXPECTED-RESULT ' but was ' RESULT
               ADD 1 TO FAILURES.


           ADD 1 to TESTS-RUN.

           MOVE 0.25 TO INPUT-NUMBER.
           MOVE 0.5 TO EXPECTED-RESULT.

           CALL 'SQRT' USING INPUT-NUMBER, RESULT.

           IF RESULT = EXPECTED-RESULT THEN
               ADD 1 TO PASSES
           ELSE
               DISPLAY 'SQRT-OF-FOUR-TEST FAILED. Expected '
               EXPECTED-RESULT ' but was ' RESULT
               ADD 1 TO FAILURES.



      *    Test results
           DISPLAY 'Tests run: ' TESTS-RUN.
           DISPLAY 'Passed: ' PASSES.
           DISPLAY 'Failed: ' FAILURES.

       END PROGRAM SQRT-TEST.
