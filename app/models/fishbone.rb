class Fishbone < ActiveRecord::Base
  belongs_to :relatorio
  belongs_to :responsavel
end
