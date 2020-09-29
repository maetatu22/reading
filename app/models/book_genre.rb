class BookGenre < ActiveHash::Base
  self.data = [
    { id: 1,  name: '---' },
    { id: 2,  name: '文学・評論'},
    { id: 3,  name: '人文・思想' },
    { id: 4,  name: '社会・政治' },
    { id: 5,  name: 'ノンフィクション' },
    { id: 6,  name: '歴史・地理'},
    { id: 7,  name: 'ビジネス・経済'},
    { id: 8,  name: '投資・金融'},
    { id: 9,  name: '科学・テクノロジー'},
    { id: 10,  name: '医学・薬学'},
    { id: 11, name: 'コンピュータ・IT'},
    { id: 12, name: 'アート・建築・デザイン'},
    { id: 13, name: '実用・ボビー'},
    { id: 14, name: 'スポーツ・アウトドア'},
    { id: 15, name: '資格・検定'},
    { id: 16, name: '暮らし・健康・子育て'},
    { id: 17, name: 'コミック'}
  ]
end
