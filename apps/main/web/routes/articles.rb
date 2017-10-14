# Define your routes like this:
#
class Main::Application
  route "articles" do |r|
    r.on :id do |article_id|
    	r.view "articles.show", id: article_id
    end
  end
end
