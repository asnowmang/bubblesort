      PROGRAM BUBBLESORT
      INTEGER n, sorted, tmp
      INTEGER t(10)

c     Parses file into array
      OPEN (log, FILE='array')
      DO n = 1, 10
         READ (log, *) t(n)
      ENDDO
      CLOSE (log)

c     Sort
      DO WHILE (sorted .EQ. 0)
         sorted = 1
         DO n = 1, 9
            IF (t(n) .GT. t(n + 1)) THEN
               tmp = t(n)
               t(n) = t(n + 1)
               t(n + 1) = tmp
               sorted = 0
            ELSE
               CONTINUE
            ENDIF
         ENDDO
      ENDDO

c     Print sorted array
      DO n = 1, 10
         PRINT *, t(n)
      ENDDO

      END PROGRAM BUBBLESORT
