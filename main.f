      PROGRAM BUBBLESORT
      INTEGER n, sorted, tmp
      INTEGER t(10)

c     Parses file into array
      OPEN (log, FILE='array')
      DO 10 n = 1, 10
         READ (log, *) t(n)
 10   CONTINUE
      CLOSE (log)

c     Sort
      DO WHILE (sorted .EQ. 0)
         sorted = 1
         DO 20 n = 1, 9
            IF (t(n) .GT. t(n + 1)) THEN
               tmp = t(n)
               t(n) = t(n + 1)
               t(n + 1) = tmp
               sorted = 0
            ELSE
               CONTINUE
            ENDIF
 20      CONTINUE
      ENDDO

c     Print sorted array
      DO n = 1, 10
         PRINT *, t(n)
      ENDDO

      END PROGRAM BUBBLESORT
