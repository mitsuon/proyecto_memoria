class Malla < ActiveRecord::Base
    belongs_to :carrera
    validates :plan, uniqueness: { scope: :carrera_id, message: " %{value} ya existe" }
end
