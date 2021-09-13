class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'こだわらない' },
    { id: 3, name: 'Webアプリケーション' },
    { id: 4, name: 'イラスト' },
    { id: 5, name: '文章' }
  ]

  include ActiveHash::Associations
  has_many :ideas
end