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
    if params[:snippet][:user_id] == current_user.id.to_s
      @snippet = Snippet.create params[:snippet]

      respond_with(@snippet)
    end
  end

end
