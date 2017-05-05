class Departamento < ActiveRecord::Base
	validates :nome, presence: true
end
