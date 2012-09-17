class HomeController < ApplicationController
  def index
    @gists = []
    if current_user
      @gists = Octokit.gists(current_user.username, :public => true).map do |gist|
        gist.html_url + ".js?file=" + gist.files.first[0]
      end
    end
  end
end
