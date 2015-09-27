json.array!(@subject_of_speeches) do |subject_of_speech|
  json.extract! subject_of_speech, :id, :title, :user_id, :user_name, :content
  json.url subject_of_speech_url(subject_of_speech, format: :json)
end
