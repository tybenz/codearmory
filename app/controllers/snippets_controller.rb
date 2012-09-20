class SnippetsController < ApplicationController

  respond_to :html, :json

  def index
    @snippets = Snippet.all
  end

  def show
    @snippet = Snippet.find(params[:id])
  end

  def new
    @snippet = Snippet.new
  end

  def create
    @params = params.to_json
    if params[:snippet][:user_id] == current_user.id.to_s
      if params[:gist][:gist_content]
        unless params[:snippet][:gist_id].empty?
          # Gave an ID and content. Which one do you prefer?
        else
          # Create new gist before saving snippet
          client = Octokit::Client.new(:login => current_user.username, :oauth_token => current_user.token)
          gist = client.create_gist({:description => params[:snippet][:description],
                                      :public => true,
                                      :files => { "file1" => { :content => params[:gist][:gist_content] } } })
          @gist = gist.to_json
          params[:snippet][:gist_id] = gist.id
        end
      end
      @snippet = Snippet.create params[:snippet]

      respond_with(@snippet)
    end
  end

end
