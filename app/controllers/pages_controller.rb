class PagesController < ApplicationController

  def show
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
    @page = Page.find_by(permalink: params[:page])
    @content = markdown.render(@page.content)
  end

end
