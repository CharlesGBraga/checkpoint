namespace :type do
  desc "Preenchimento dos typos padrões"
  task setup: :environment do
    if Rails.env.development?      
      show_spinner("Apagando Banco de dados") { %x(rails db:drop) }
      show_spinner("Criando Banco de dados") { %x(rails db:create) }
      show_spinner("Migrando Banco de dados") { %x(rails db:migrate) }
      show_spinner("Populando Tabela Types") { %x(rails db:seed) }    
    else 
      puts "Você não está em ambiente de desenvolvimento!"  
    end  
  end

  private
  def show_spinner(msg_start, msg_success = "Concluído com sucesso!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_success})")
  end  
end

# Forma não resumida do "do" e "end"
# show_spinner("Apagando Banco de dados") do
#   %x(rails db:drop)
# end