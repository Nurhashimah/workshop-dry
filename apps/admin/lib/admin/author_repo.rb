require 'blog/repository'
require 'admin/entities'

module Admin
  class AuthorRepo < Blog::Repository[:authors]
    commands :create
  end
end
