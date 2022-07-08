atom_feed do |feed|
  feed.title("Articles Index")
  feed.updated(@articles.first.created_at)
  @articles.each do |article|
    feed.title(article.title)
    feed.description(article.description, type: 'html')
    end
end