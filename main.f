      PROGRAM BUBBLESORT
      LOGICAL sorted
      INTEGER n, tmp
      INTEGER t(10)

c     Parses file into array
      OPEN (log, FILE='array')
      DO 10 n = 1, 10
         READ (log, *) t(n)
 10   CONTINUE
      CLOSE (log)

c     Sort
      DO WHILE (sorted .EQV. .FALSE.)
         sorted = .TRUE.
         DO 20 n = 1, 9
            IF (t(n) .GT. t(n + 1)) THEN
               tmp = t(n)
               t(n) = t(n + 1)
               t(n + 1) = tmp
               sorted = .FALSE.
            ELSE
               CONTINUE
            ENDIF
 20      CONTINUE
      ENDDO

c     Print sorted array
      DO 30 n = 1, 10
         PRINT *, t(n)
 30   CONTINUE

      END PROGRAM BUBBLESORT
