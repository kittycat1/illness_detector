class Illness < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_symptoms,
                  against: :symptoms,
                  using: {
                    tsearch: {
                      any_word: true,
                      negation: true,
                      dictionary: "english"
                    },
                    dmetaphone: {
                      any_word: true
                    },
                    trigram: {
                      threshold: 0.1
                    }
                  }

  pg_search_scope :search_all_symptoms,
                  against: :symptoms
end
