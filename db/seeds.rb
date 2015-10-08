# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(:email => 'admin@test.com', :password => 'adminadmin', :name => '管理者', :name_kana => 'かんりしゃ', :affiliation => '管理者病院', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18', :role => 0)
user.save!

user = User.new(:email => 'reviewer@test.com', :password => 'reviewreview', :name => '査閲者', :name_kana => 'さえつしゃ', :affiliation => '査閲者病院', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18', :role => 1)
user.save!

user = User.new(:email => 'test1@test.com', :password => 'testtest', :name => '桃太郎', :name_kana => 'ももたろう', :affiliation => 'どんぶらこ村', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18')
user.save!

user = User.new(:email => 'test2@test.com', :password => 'testtest', :name => '金太郎', :name_kana => 'きんたろう', :affiliation => 'あしがら山', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18')
user.save!

# binding.pry
subject = SubjectOfSpeech.new(:title => '太郎の研究', :sub_title => '桃はどこからやってきたのか', :user_id => User.where("email = ?", 'test1@test.com').pluck(:id).first, :costar => '[{"name" => "おじいさん", "affiliation" => "どんぶらこ村", "job_category" => "きこり" }, {"name" => "おばあさん", "affiliation" => "どんぶらこ村", "job_category" => "家事手伝い" }, {"name" => "赤おに", "affiliation" => "鬼ヶ島", "job_category" => "フリーター" }]', :presentation_style => 'ポスター', :category => 'category 01', :content => 'content desu.', :keywords => 'test1, test2, test3')
subject.save!

subject = SubjectOfSpeech.new(:title => '金太郎の研究', :sub_title => '熊との死闘', :user_id => User.where("email = ?", 'test2@test.com').pluck(:id).first, :costar => '[{"name" => "熊", "affiliation" => "あしがら山", "job_category" => "熊" }, {"name" => "cos2", "affiliation" => "afil", "job_category" => "job" }, {"name" => "cos3", "affiliation" => "afil", "job_category" => "job" }]', :presentation_style => 'ポスター', :category => 'category 01', :content => 'content desu.', :keywords => 'test1, test2, test3')
subject.save!
