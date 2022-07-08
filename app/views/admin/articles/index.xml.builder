xml.instruct!
xml.articles do
  @articles.each do |a|
    xml.article do
      xml.id a.id
      xml.title a.title
    end
  end
end