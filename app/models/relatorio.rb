class Relatorio < ActiveRecord::Base
  belongs_to :departamento
  belongs_to :setor
  has_many :fishbones, dependent: :destroy
   
  validates :departamento, presence: true
  validates :setor, presence: true
  
  accepts_nested_attributes_for :fishbones
  

end
