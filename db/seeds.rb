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
