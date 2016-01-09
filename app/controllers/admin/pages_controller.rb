class Admin::PagesController < Admin::BaseController

  def index
    @pages = Page.all
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)

    if @page.save
      flash.notice = "New Page, success!"
      redirect_back_or admin_pages_path
    else
      flash.now.alert = "Oops Fail"
      render :new
    end
  end

  def edit
    @page = Page.find(params[:id])
  end

  def update
    @page = Page.find(params[:id])

    if @page.update_attributes(page_params)
      redirect_to admin_pages_path, notice: "Successfully updated"
    else
      flash.now.alert = "Oops failed update!"
      render :edit
    end
  end

  def destroy
    @page = Page.find(params[:id])

    @page.destroy
    redirect_to admin_pages_path, notice: "Page was successfully deleted."
  end

private

  def page_params
    params.require(:page).permit(
      :title,
      :content
    )
  end

end
