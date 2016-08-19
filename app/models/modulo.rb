class Modulo < ActiveRecord::Base
    belongs_to :malla
    validates :codigo, :uniqueness => { message: " %{value} ya existe" }
end
