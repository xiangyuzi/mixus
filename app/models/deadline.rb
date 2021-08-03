class Deadline < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '1週間以内' },
    { id: 3, name: '2-3週間以内' },
    { id: 4, name: '1ヶ月以上' }
  ]

  include ActiveHash::Associations
  has_many :orders
end