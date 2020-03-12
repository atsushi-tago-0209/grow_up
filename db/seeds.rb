# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Target.create(target: "初任者")
Target.create(target: "３年目まで")
Target.create(target: "５年目まで")
Target.create(target: "１０年目まで")
Target.create(target: "初任者指導")
Target.create(target: "生徒指導主任")
Target.create(target: "体育主任")
Target.create(target: "いじめ担当")
Target.create(target: "教育相談")
Target.create(target: "教務主任")
Target.create(target: "管理職")
Target.create(target: "事務員")
Target.create(target: "全て")

hokkaido = Category.create(name: "北海道")
hokkaido.children.create([{name: "北海道"}])

tohoku = Category.create(name: "東北")
tohoku.children.create([{name: "青森"},{name: "秋田"},{name: "岩手"},{name: "宮城"},{name: "山形"},{name: "福島"}])

kanto = Category.create(name:"関東")
kanto.children.create([{name: "茨木"},{name: "栃木"},{name: "群馬"},{name: "埼玉"},{name: "千葉"},{name: "東京"},{name: "神奈川"}])

tyubu = Category.create(name:"中部")
tyubu.children.create([{name: "新潟"},{name: "富山"},{name: "石川"},{name: "長野"},{name: "岐阜"},{name: "山梨"},{name: "福井"},{name: "静岡"},{name: "愛知"}])

kinki =Category.create(name: "近畿")
kinki.children.create([{name: "京都"},{name: "滋賀"},{name: "大阪"},{name: "奈良"},{name: "和歌山"},{name: "兵庫"},{name: "三重"}])

tyugoku = Category.create(name: "中国")
tyugoku.children.create([{name: "鳥取"},{name: "島根"},{name: "岡山"},{name: "広島"},{name: "山口"}])

sikoku = Category.create(name: "四国")
sikoku.children.create([{name: "徳島"},{name: "香川"},{name: "愛媛"},{name: "高知"}])

kyuusyuu = Category.create(name: "九州")
kyuusyuu.children.create([{name: "福岡"},{name: "佐賀"},{name: "長崎"},{name: "大分"},{name: "熊本"},{name: "鹿児島"},{name: "沖縄"}])

Post.create(
  title: "【教師のための楽しく学んでハッピーになれるセミナー】"
  place: "京都市中京区研修町１"
  image: File.open('./app/assets/images/test.jpg')
  belongings: "新学習指導要領"
  sentence: "★午前：「荒れた学級にしない学級経営の技」（10:00～12:30）
  第一講座
  百人一首の教育的効果は絶大！あの子が負けを受け入れられる！？高学年の男女の仲が自然と良くなる！？保護者からも大好評！？
  第二講座
  褒めて伸ばせば、子どもも保護者も大満足！？子どもの褒め方（褒め方１０パターン・一筆箋など）  
  第三講座
  正しい子どもの叱り方をすれば、子どもの信頼を得る（予告評定など）
  第四講座
  当番システムが安定すれば、学級も安定！？そうじ当番、一人一役システム
  第五講座
  弱肉強食の世界は、学級崩壊へと続く？これぞ平等。給食おかわりシステムとその応用"
  schdule: "2020-03-21"
  time:"11:10:00"
  endtime:"11:50:00"
  capacity:"20"
  fee:"1500"
  user_id:"1"
  category_id:"29"
)

User.create(
  first_name:"山田"
  last_name:"太郎"
  first_name_kana:"ヤマダ"
  last_name_kana:"タロウ"
  email:"y@gmail.com"
  encrypted_password:"$2a$11$4k.OCk0NFRrLsW5ivrTAfujGwM1gZWP.aKeLlFtWu2V.ivyB0FnWW"
)