class StaticsController < ApplicationController
  def index
  end

  def contact
    @contact = Static.new
  end

  def thanks
  end

  def create
    @contact = Static.create(contact_params)
    if @contact.save
      redirect_to contacts_thanks_path
    else
      render 'index'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :content, :email)
  end
end
