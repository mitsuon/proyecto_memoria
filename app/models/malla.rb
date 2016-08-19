class Malla < ActiveRecord::Base
    belongs_to :carrera, dependent: :delete
    has_many :modulos
    validates :plan, uniqueness: { scope: :carrera_id, message: " %{value} ya existe" }
    
end
