class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Webアプリケーション' },
    { id: 3, name: 'イラスト' },
    { id: 4, name: '文章' }
  ]

  include ActiveHash::Associations
  has_many :ideas
end