class Illness < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_any_symptoms,
                  against: :symptoms
                  using: {
                    tsearch: {any_word: true}
                  }

  pg_search_scope :search_all_symptoms,
                  against: :symptoms
end
