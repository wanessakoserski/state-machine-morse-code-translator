class FromMorseCode
  def read_next
    print '> '
    gets.chomp
  end

  def print_translation
    @translation
  end

  def end_of_letter
    print ">>> end of letter\n"
    return :q0
  end

  def start
    state = :q0
    @translation = ''

    loop do
    input = read_next

      case [state, input]
      ## translation stop condition and successful return of translated characters ##
      in [:q111, '']
        print ">>> end of translation\n"
        print "\n== tradução ocorreu com sucesso ==\n"
        print "\nTradução: " + @translation + "\n"
        break

      ## character that determines the end of the word ##
      in [:q0, '']
        @translation << ' '
        state = :q111
        print ">>> end of word\n"

      in [:q0, '.']
        state = :q1

      in [:q0, '-']
        state = :q2

      in [:q111, '.']
        state = :q1

      in [:q111, '-']
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

      in [:q19, '-']
        state = :q40

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
        state = end_of_letter

      in [:q44, '']
        @translation << 'B'
        state = end_of_letter

      in [:q41, '']
        @translation << 'C'
        state = end_of_letter

      in [:q20, '']
        @translation << 'D'
        state = end_of_letter

      in [:q1, '']
        @translation << 'E'
        state = end_of_letter

      in [:q24, '']
        @translation << 'F'
        state = end_of_letter

      in [:q17, '']
        @translation << 'G'
        state = end_of_letter

      in [:q21, '']
        @translation << 'H'
        state = end_of_letter

      in [:q3, '']
        @translation << 'I'
        state = end_of_letter

      in [:q31, '']
        @translation << 'J'
        state = end_of_letter

      in [:q19, '']
        @translation << 'K'
        state = end_of_letter

      in [:q27, '']
        @translation << 'L'
        state = end_of_letter

      in [:q7, '']
        @translation << 'M'
        state = end_of_letter

      in [:q8, '']
        @translation << 'N'
        state = end_of_letter

      in [:q16, '']
        @translation << 'O'
        state = end_of_letter

      in [:q30, '']
        @translation << 'P'
        state = end_of_letter

      in [:q37, '']
        @translation << 'Q'
        state = end_of_letter

      in [:q12, '']
        @translation << 'R'
        state = end_of_letter

      in [:q9, '']
        @translation << 'S'
        state = end_of_letter

      in [:q2, '']
        @translation << 'T'
        state = end_of_letter

      in [:q10, '']
        @translation << 'U'
        state = end_of_letter

      in [:q22, '']
        @translation << 'V'
        state = end_of_letter

      in [:q13, '']
        @translation << 'W'
        state = end_of_letter

      in [:q43, '']
        @translation << 'X'
        state = end_of_letter

      in [:q40, '']
        @translation << 'Y'
        state = end_of_letter

      in [:q38, '']
        @translation << 'Z'
        state = end_of_letter

      ## return of numbers ##
      in [:q67, '']
        @translation << '1'
        state = end_of_letter

      in [:q55, '']
        @translation << '2'
        state = end_of_letter

      in [:q49, '']
        @translation << '3'
        state = end_of_letter

      in [:q46, '']
        @translation << '4'
        state = end_of_letter

      in [:q45, '']
        @translation << '5'
        state = end_of_letter

      in [:q92, '']
        @translation << '6'
        state = end_of_letter

      in [:q80, '']
        @translation << '7'
        state = end_of_letter

      in [:q74, '']
        @translation << '8'
        state = end_of_letter

      in [:q71, '']
        @translation << '9'
        state = end_of_letter

      in [:q70, '']
        @translation << '0'
        state = end_of_letter

      ## return of symbols ##
      in [:q103, '']
        @translation << ','
        state = end_of_letter

      in [:q98, '']
        @translation << '.'
        state = end_of_letter

      in [:q105, '']
        @translation << '-'
        state = end_of_letter

      in [:q96, '']
        @translation << '?'
        state = end_of_letter

      ## if the inserted input falls into an invalid state, the translation is interrupted ##
      else
        print "\n== tradução não ocorreu com sucesso ==\n"
        print "\nSequência inválida\n"
        break
      end

    end
  end
end
