class JpgsController < ApplicationController
  def index
    @q = Jpg.ransack(params[:q])
    @jpgs = @q.result(:distinct => true).includes(:photo, :article).page(params[:page]).per(10)

    render("jpg_templates/index.html.erb")
  end

  def show
    @jpg = Jpg.find(params.fetch("id_to_display"))

    render("jpg_templates/show.html.erb")
  end

  def new_form
    @jpg = Jpg.new

    render("jpg_templates/new_form.html.erb")
  end

  def create_row
    @jpg = Jpg.new

    @jpg.photo_id = params.fetch("photo_id")

    if @jpg.valid?
      @jpg.save

      redirect_back(:fallback_location => "/jpgs", :notice => "Jpg created successfully.")
    else
      render("jpg_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_photo
    @jpg = Jpg.new

    @jpg.photo_id = params.fetch("photo_id")

    if @jpg.valid?
      @jpg.save

      redirect_to("/photos/#{@jpg.photo_id}", notice: "Jpg created successfully.")
    else
      render("jpg_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @jpg = Jpg.find(params.fetch("prefill_with_id"))

    render("jpg_templates/edit_form.html.erb")
  end

  def update_row
    @jpg = Jpg.find(params.fetch("id_to_modify"))

    @jpg.photo_id = params.fetch("photo_id")

    if @jpg.valid?
      @jpg.save

      redirect_to("/jpgs/#{@jpg.id}", :notice => "Jpg updated successfully.")
    else
      render("jpg_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_photo
    @jpg = Jpg.find(params.fetch("id_to_remove"))

    @jpg.destroy

    redirect_to("/photos/#{@jpg.photo_id}", notice: "Jpg deleted successfully.")
  end

  def destroy_row
    @jpg = Jpg.find(params.fetch("id_to_remove"))

    @jpg.destroy

    redirect_to("/jpgs", :notice => "Jpg deleted successfully.")
  end
end
