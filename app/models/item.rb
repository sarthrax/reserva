class Item < ActiveRecord::Base
  belongs_to :indicativo
  attr_accessible :numero
  has_many :cautelas
  has_many :policials

  private 
  def descricao
    self.indicativo.descricao
  end

  def descricao_completa
    self.indicativo.descricao+' - '+self.numero
  end

end
