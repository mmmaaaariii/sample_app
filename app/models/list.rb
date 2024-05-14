class List < ApplicationRecord
    has_one_attached :image
    
    validates :title, presence: true
    validates :body, presence: true
    
    # チャプター10  rails cのときコメントアウト
    validates :image, presence: true
end
