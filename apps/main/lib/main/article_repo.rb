require "blog/repository"

module Main
  class ArticleRepo < Blog::Repository[:articles]
  	def listing
  		articles.ordered_by_created_at
  	end
  end
end
