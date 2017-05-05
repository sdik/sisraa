class Fishbone < ActiveRecord::Base
  belongs_to :relatorio
  belongs_to :responsavel
  validates :causa, :acao, :responsavel, :prazo,  presence: true
end
