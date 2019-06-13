class Post < ApplicationRecord
    # dependent: :destroyをつけると、Postを削除すると、関連づけられている
    # Commentsのデータも自動で削除してくれる
    has_many :comments, dependent: :destroy
    validates :title, presence: true, length: { minimum: 3, message: 'Too short to post!'}
    validates :body, presence: true
end
