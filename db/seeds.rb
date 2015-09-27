# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new(:email => 'test1@test.com', :password => 'testtest', :name => 'テスト太郎', :name_kana => 'てすとたろう', :affiliation => 'てすと病院', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18')
user.save!

user = User.new(:email => 'test2@test.com', :password => 'testtest', :name => 'テスト次郎', :name_kana => 'てすとじろう', :affiliation => 'てすと整形外科', :tel => '029-123-4567', :fax => '029-123-4567', confirmation_token: 'KBownyazNbmUSxwfjwEQ', confirmed_at: '2015-08-18 08:52:03', confirmation_sent_at: '2015-08-18 08:51:18')
user.save!

# binding.pry
subject = SubjectOfSpeech.new(:title => 'title1', :sub_title => 'sub title 1', :user_id => User.where("email = ?", 'test1@test.com').pluck(:id).first, :costar => '[{"name" => "cos1", "affiliation" => "afil", "job_category" => "job" }, {"name" => "cos2", "affiliation" => "afil", "job_category" => "job" }, {"name" => "cos3", "affiliation" => "afil", "job_category" => "job" }]', :presentation_style => 'ポスター', :category => 'category 01', :content => 'content desu.', :keywords => 'test1, test2, test3')
subject.save!

