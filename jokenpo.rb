class Jokenpo

    attr_accessor :bot
    attr_accessor :jogador

    def jogar
        @bot = ["pedra", "papel", "tesoura"].sample
        @jogador = jogador

        case jogador

        when "pedra"
            if (bot) == (jogador)
                puts "Empatou :/"
            elsif (bot == "papel")
                puts "Você perdeu :("
            else
                puts "Você ganhou :)"
            end
        

        when "papel"
            if (bot) == (jogador)
                puts "Empatou :/"
            elsif (bot == "tesoura")
                puts "Você perdeu :("
            else
                puts "Você ganhou :)"
            end
       
        when "tesoura"

            if (bot) == (jogador)
                puts "Empatou :/"
            elsif (bot == "pedra")
                puts "Você perdeu :("
            else
                puts "Você ganhou :)"
            end
        
        else
            puts ("Comando errado!")
            puts ("\n")
        end
    end
end

puts "--------------------------------------------"
puts "|       Bem vindo ao Jokenpo em ruby       |"
puts "|       Para começar digite jogar          |"
puts "--------------------------------------------"
comecar = gets.chomp

while (comecar == "jogar") do
    
    print "Escolha pedra, papel ou tesoura? "
    jogador = gets.chomp

    player = Jokenpo.new

    player.jogador = jogador
    player.jogar

    puts "Você escolheu #{jogador}"
    print "O bot escolheu: "
    puts player.bot
    puts ("\n")
    

    puts "--------------------------------------------"
    puts "|       Bem vindo ao Jokenpo em ruby       |"
    puts "|       Para começar digite jogar          |"
    puts "--------------------------------------------"
    comecar = gets.chomp
    puts ("\n")
end
