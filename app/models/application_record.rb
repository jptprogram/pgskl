class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def availability
    disponible? ? 'Entrega Inmediata' : 'Preguntar disponibilidad'
  end
end
