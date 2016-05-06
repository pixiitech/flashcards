json.array!(@answer_keywords) do |answer_keyword|
  json.extract! answer_keyword, :id, :text, :case_sensitive, :order, :question_id
  json.url answer_keyword_url(answer_keyword, format: :json)
end
