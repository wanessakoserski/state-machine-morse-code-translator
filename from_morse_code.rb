require 'io/console'

class FromMorseCode
  def read_next
    print '> '
    gets.chomp
  end

  def print_translation
    @translation
  end

  def start
    state = :q0
    @translation = ''

    loop do
    input = read_next

      case [state, input]
      ## translation stop condition and successful return of translated characters ##
      in [:q0, '']
        print "\n== tradução ocorreu com sucesso ==\n"
        print "\nTradução: " + @translation + "\n"
        break

      ## character that determines the end of the word ##
      in [:q0, ' ']
        @translation << ' '

      in [:q0, '.']
        state = :q1

      in [:q0, '-']
        state = :q2

      in [:q1, '-']
        state = :q4

      in [:q1 , '.']
        state = :q3

      in [:q2, '.']
        state = :q8

      in [:q2, '-']
        state = :q7

      in [:q3, '-']
        state = :q10

      in [:q3, '.']
        state = :q9

      in [:q4, '-']
        state = :q13

      in [:q4, '.']
        state = :q12

      in [:q7, '.']
        state = :q17

      in [:q7, '-']
        state = :q16

      in [:q8, '.']
        state = :q20

      in [:q8, '-']
        state = :q19

      in [:q9, '.']
        state = :q21

      in [:q9, '-']
        state = :q22

      in [:q10, '.']
        state = :q24

      in [:q10, '-']
        state = :q25

      in [:q12, '.']
        state = :q27

      in [:q12, '-']
        state = :q28

      in [:q13, '-']
        state = :q31

      in [:q13, '.']
        state = :q30

      in [:q16, '.']
        state = :q35

      in [:q16, '-']
        state = :q34

      in [:q17, '-']
        state = :q37

      in [:q17, '.']
        state = :q38

      in [:q19, '.']
        state = :q41

      in [:q20, '.']
        state = :q44

      in [:q20, '-']
        state = :q43

      in [:q21, '-']
        state = :q46

      in [:q21, '.']
        state = :q45

      in [:q22, '-']
        state = :q49

      in [:q25, '-']
        state = :q55

      in [:q25, '.']
        state = :q54

      in [:q28, '.']
        state = :q60

      in [:q31, '-']
        state = :q67

      in [:q34, '-']
        state = :q70

      in [:q34, '.']
        state = :q71

      in [:q35, '.']
        state = :q74

      in [:q38, '-']
        state = :q79

      in [:q38, '.']
        state = :q80

      in [:q44, '.']
        state = :q92

      in [:q54, '.']
        state = :q96

      in [:q60, '-']
        state = :q98

      in [:q79, '-']
        state = :q103

      in [:q92, '-']
        state = :q105

      ## return of letters ##
      in [:q4, '']
        @translation << 'A'
        state = :q0

      in [:q44, '']
        @translation << 'B'
        state = :q0

      in [:q41, '']
        @translation << 'C'
        state = :q0

      in [:q20, '']
        @translation << 'D'
        state = :q0

      in [:q1, '']
        @translation << 'E'
        state = :q0

      in [:q24, '']
        @translation << 'F'
        state = :q0

      in [:q17, '']
        @translation << 'G'
        state = :q0

      in [:q21, '']
        @translation << 'H'
        state = :q0

      in [:q3, '']
        @translation << 'I'
        state = :q0

      in [:q31, '']
        @translation << 'J'
        state = :q0

      in [:q19, '']
        @translation << 'K'
        state = :q0

      in [:q27, '']
        @translation << 'L'
        state = :q0

      in [:q7, '']
        @translation << 'M'
        state = :q0

      in [:q8, '']
        @translation << 'N'
        state = :q0

      in [:q16, '']
        @translation << 'O'
        state = :q0

      in [:q30, '']
        @translation << 'P'
        state = :q0

      in [:q37, '']
        @translation << 'Q'
        state = :q0

      in [:q12, '']
        @translation << 'R'
        state = :q0

      in [:q9, '']
        @translation << 'S'
        state =:q0

      in [:q2, '']
        @translation << 'T'
        state = :q0

      in [:q10, '']
        @translation << 'U'
        state = :q0

      in [:q22, '']
        @translation << 'V'
        state = :q0

      in [:q13, '']
        @translation << 'W'
        state = :q0

      in [:q43, '']
        @translation << 'X'
        state = :q0

      in [:q38, '']
        @translation << 'Z'
        state = :q0

      ## return of numbers ##
      in [:q67, '']
        @translation << '1'
        state = :q0

      in [:q25, '']
        @translation << '2'
        state = :q0

      in [:q49, '']
        @translation << '3'
        state = :q0

      in [:q46, '']
        @translation << '4'
        state = :q0

      in [:q45, '']
        @translation << '5'
        state = :q0

      in [:q92, '']
        @translation << '6'
        state = :q0

      in [:q80, '']
        @translation << '7'
        state = :q0

      in [:q74, '']
        @translation << '8'
        state = :q0

      in [:q71, '']
        @translation << '9'
        state = :q0

      in [:q70, '']
        @translation << '0'
        state = :q0

      ## return of symbols ##
      in [:q103, '']
        @translation << ','
        state = :q0

      in [:q98, '']
        @translation << '.'
        state = :q0

      in [:q105, '']
        @translation << '-'
        state = :q0

      in [:q96, '']
        @translation << '?'
        state = :q0

      ## if the inserted input falls into an invalid state, the translation is interrupted ##
      else
        print "\n== tradução não ocorreu com sucesso ==\n"
        print "\nSequência inválida\n"
        break
      end

    end
  end
end
