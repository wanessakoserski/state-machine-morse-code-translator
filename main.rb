require_relative 'from_morse_code'

translate_from_morse_code = FromMorseCode.new

puts "\nTradutor de código morse"
puts "~ esse tradutor utilizar a transição de estados"
puts "~ insira . ou -"
puts "~ importante ser um de cada vez, ou seja, insira . / - e de ENTER para transicionar o estado"
puts "~ quando terminar a sequência . / - da letra tecle ENTER para processar o fim da letra"
puts "~ caso também seja fim da palavra, tecle novamente ENTER para processar o fim da palavra e inserir espaço"
puts "~ caso não haja mais nenhuma palavra, tecle novamente ENTER para finalizar a tradução"
puts "~ 1º ENTER: fim de letra, 2º ENTER: fim de palavra, 3º ENTER: fim de tradução"

puts "\n\nDigite a sequência: "
translate_from_morse_code.start
