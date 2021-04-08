class Illness < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_symptoms, against: :symptoms  
end
