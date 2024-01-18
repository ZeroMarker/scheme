(define (hanoi n source target aux)
  (if (= n 0) ; base case - no more disks to move
      '()
      (let ((next-move (if (zero? (- n 1))
                           source
                           target))) ; recursive call
        (append (hanoi (- n 1) source next-move aux)
                (list (cons source target)) ; actual move
                (hanoi (- n 1) next-move target source)))))

; Example usage: Move 3 disks from peg A to peg B using peg C as an auxiliary peg
(display (hanoi 3 'a 'b 'c)) ; prints out the moves required to solve the puzzle
