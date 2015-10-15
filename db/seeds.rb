# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category = Category.new(:id => 0, :value => "")
category.save!

category = Category.new(:id => 1, :value => "A. 疾病: 01 -   疾病（診断，障害，症状，属性，治療法を含む）")
category.save!

category = Category.new(:id => 2, :value => "A. 疾病: 01-1 - 整形外科疾患")
category.save!

category = Category.new(:id => 3, :value => "A. 疾病: 01-2 - 中枢性疾患（脳血管障害）")
category.save!

category = Category.new(:id => 4, :value => "A. 疾病: 01-3 - 中枢性疾患（その他）")
category.save!

category = Category.new(:id => 5, :value => "A. 疾病: 01-4 - 内部疾患（呼吸器，循環器など）")
category.save!

category = Category.new(:id => 6, :value => "A. 疾病: 01-5 - 悪性腫瘍")
category.save!

category = Category.new(:id => 7, :value => "A. 疾病: 01-6 - その他")
category.save!

category = Category.new(:id => 8, :value => "B．身体構造: 02 - 筋骨・末梢神経の障害（スプリント，義肢を含む）")
category.save!

category = Category.new(:id => 9, :value => "C．心身機能: 03 - 感覚-運動・中枢神経の障害（脳卒中，頭部外傷を含む）")
category.save!

category = Category.new(:id => 10, :value => "C．心身機能: 04 - 認知機能（高次脳機能障害を含む）")
category.save!

category = Category.new(:id => 11, :value => "C．心身機能: 05 - 知的機能（知能，認知症を含む）")
category.save!

category = Category.new(:id => 12, :value => "C．心身機能: 06 - 発達（発達の障害を含む）")
category.save!

category = Category.new(:id => 13, :value => "C．心身機能: 07 - 精神障害（精神関連疾患を含む）")
category.save!

category = Category.new(:id => 14, :value => "D．個人因子: 08 - 心理（ストレス，障害受容，性格，興味を含む）")
category.save!

category = Category.new(:id => 15, :value => "E．活動・参加: 09 - 対人関係（コミュニケーション，対人関係スキルを含む）")
category.save!

category = Category.new(:id => 16, :value => "E．活動・参加: 10 - セルフケア（ADL，IADL，家屋改造を含む）")
category.save!

category = Category.new(:id => 17, :value => "E．活動・参加: 11 - 仕事（復職援助，職業リハビリテーションを含む）")
category.save!

category = Category.new(:id => 18, :value => "E．活動・参加: 12 - 余暇活動（手工芸，スポーツ，趣味，旅行を含む）")
category.save!

category = Category.new(:id => 19, :value => "E．活動・参加: 13 - 作業全般（作業遂行技能，自立生活，地域生活を含む）")
category.save!

category = Category.new(:id => 20, :value => "E．活動・参加: 14 - 治療的作業（作業特性，作業分析，集団を含む）")
category.save!

category = Category.new(:id => 21, :value => "F．環境因子: 15 - 援助機器（自助具，福祉用具を含む）")
category.save!

category = Category.new(:id => 22, :value => "F．環境因子: 16 - サービス・環境（社会，制度，他領域を含む）")
category.save!

category = Category.new(:id => 23, :value => "G．その他: 17 - 専門職関連（理論，倫理，管理，協会，研究を含む）")
category.save!

category = Category.new(:id => 24, :value => "G．その他: 18 - 教育（養成カリキュラム，生涯教育を含む）")
category.save!

category = Category.new(:id => 25, :value => "G．その他: 00 - その他")
category.save!

role = Role.new(:id => 0, :name => 'admin', :max_user_num => 1)
role.save!

role = Role.new(:id => 1, :name => 'reviewer', :max_user_num => 1)
role.save!

role = Role.new(:id => 2, :name => 'member', :max_user_num => 3)
role.save!

user = User.new(:id => 0, :email => 'admin@test.com', :password => 'adminadmin', :name => '管理者', :name_kana => 'かんりしゃ', :affiliation => '管理者病院', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18', :role_id => 0)
user.save!

user = User.new(:id => 1, :email => 'reviewer@test.com', :password => 'reviewreview', :name => '査閲者', :name_kana => 'さえつしゃ', :affiliation => '査閲者病院', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18', :role_id => 1)
user.save!

user = User.new(:id => 2, :email => 'test1@test.com', :password => 'testtest', :name => '桃太郎', :name_kana => 'ももたろう', :affiliation => 'どんぶらこ村', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18')
user.save!

user = User.new(:id => 3, :email => 'test2@test.com', :password => 'testtest', :name => '金太郎', :name_kana => 'きんたろう', :affiliation => 'あしがら山', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18')
user.save!

# binding.pry
subject = SubjectOfSpeech.new(:title => '桃太郎の研究', :sub_title => '桃はどこからやってきたのか', :user_id => User.where("email = ?", 'test1@test.com').pluck(:id).first, :costar => '[{"name" => "おじいさん", "affiliation" => "どんぶらこ村", "job_category" => "きこり" }, {"name" => "おばあさん", "affiliation" => "どんぶらこ村", "job_category" => "家事手伝い" }, {"name" => "赤おに", "affiliation" => "鬼ヶ島", "job_category" => "フリーター" }]', :presentation_style => 'ポスター', :category_id => 0, :content => 'content desu.', :keywords => 'test1, test2, test3')
subject.save!

subject = SubjectOfSpeech.new(:title => '金太郎の研究', :sub_title => '熊との死闘', :user_id => User.where("email = ?", 'test2@test.com').pluck(:id).first, :costar => '[{"name" => "熊", "affiliation" => "あしがら山", "job_category" => "熊" }, {"name" => "cos2", "affiliation" => "afil", "job_category" => "job" }, {"name" => "cos3", "affiliation" => "afil", "job_category" => "job" }]', :presentation_style => 'ポスター', :category_id => 1, :content => 'content desu.', :keywords => 'test1, test2, test3')
subject.save!
