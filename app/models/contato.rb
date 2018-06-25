class Contato < ActiveRecord::Base   
	validates_presence_of :nome, :message => " - Deve ser preenchido"
	validates_presence_of :telefone, :message => " - Deve ser preenchido"
end

