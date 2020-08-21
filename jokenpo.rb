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

loop do
    
    puts "--------------------------------------------"
    puts "|       Bem vindo ao Jokenpo em ruby       |"
    puts "|       Para começar digite jogar          |"
    puts "--------------------------------------------"
    comecar = gets.chomp

break if (comecar != 'jogar')

    print "Escolha pedra, papel ou tesoura? "
    jogador = gets.chomp

    player = Jokenpo.new

    player.jogador = jogador
    player.jogar

    puts "Você escolheu #{jogador}"
    puts "O bot escolheu: #{player.bot} "
end