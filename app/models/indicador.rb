class Indicador < ApplicationRecord
	validates :fecha, presence:true, uniqueness: {case_sensitive: false}
end
