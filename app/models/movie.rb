class Movie < ApplicationRecord
  with_options presence: true do
    validates :genre
    validates :title
    validates :url
  end
  enum genre: {
    invisible: 0, # 非表示
    basic: 1,
    git: 2,
    ruby: 3,
    rails: 4,
    php: 5
  }
  RAILS_GENRE_LIST = %w[basic git ruby rails]
 end
