class Indicativo < ActiveRecord::Base
  attr_accessible :descricao, :lote
  has_many :items, :dependent => :destroy
end
