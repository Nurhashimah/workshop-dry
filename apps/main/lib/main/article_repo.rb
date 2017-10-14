require "blog/repository"

module Main
  class ArticleRepo < Blog::Repository[:articles]

  	relations :authors

    def by_pk(id)
      articles.by_pk(id).one!
    end

  	def listing
  		articles.ordered_by_created_at
  	end

  	private
  	def articles
  		super.combine(:author)
  	end
  end
end
