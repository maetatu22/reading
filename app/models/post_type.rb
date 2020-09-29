class PostType < ActiveHash::Base
  self.data = [
    { id: 1, name: '---'},
    { id: 2, name: '感想・評価'},
    { id: 3, name: 'まとめ・気付き'},
    { id: 4, name: '質問・疑問点'},
    { id: 5, name: 'その他'}
  ]
end
