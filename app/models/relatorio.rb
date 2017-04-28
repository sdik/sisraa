class Relatorio < ActiveRecord::Base
  belongs_to :departamento
  belongs_to :setor
  has_many :fishbones, dependent: :destroy
  
  accepts_nested_attributes_for :fishbones
  

end
