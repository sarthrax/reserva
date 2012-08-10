class Veiculo < ActiveRecord::Base
  belongs_to :policial
  attr_accessible :cor, :modelo, :placa
  validates_presence_of :cor, :modelo, :placa, :message => " - Preencha o campo"
  validates_uniqueness_of :placa, :message => "- Ja registrado no sistema"
  validates :placa, :format => { :with => /[A-Z|a-z]{3}[0-9]{4}/, :message => "- Formato [XXXNNNN] onde X sao letras e N numeros" }
end
