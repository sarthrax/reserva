class Cautela < ActiveRecord::Base
  belongs_to :policial
  belongs_to :item
  attr_accessible :data_inicio, :data_termino, :observacao
end
