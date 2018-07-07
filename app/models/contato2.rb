class Contato < ActiveRecord::Base   
	validates :nome, presence: true, length: {minimum: 3}
	VALID_TELEFONE_FORMAT= /[(][1-9]{2}[)][1-9]{4,5}[-][0-9]{4}/
	validates :telefone, presence: true, length: {maximum: 14}, format: { with: VALID_TELEFONE_FORMAT}
end





