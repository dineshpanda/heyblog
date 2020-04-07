class PngsController < ApplicationController
  def index
    @q = Png.ransack(params[:q])
    @pngs = @q.result(:distinct => true).page(params[:page]).per(10)

    render("png_templates/index.html.erb")
  end

  def show
    @png = Png.find(params.fetch("id_to_display"))

    render("png_templates/show.html.erb")
  end

  def new_form
    @png = Png.new

    render("png_templates/new_form.html.erb")
  end

  def create_row
    @png = Png.new

    @png.photo_id = params.fetch("photo_id")

    if @png.valid?
      @png.save

      redirect_back(:fallback_location => "/pngs", :notice => "Png created successfully.")
    else
      render("png_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @png = Png.find(params.fetch("prefill_with_id"))

    render("png_templates/edit_form.html.erb")
  end

  def update_row
    @png = Png.find(params.fetch("id_to_modify"))

    @png.photo_id = params.fetch("photo_id")

    if @png.valid?
      @png.save

      redirect_to("/pngs/#{@png.id}", :notice => "Png updated successfully.")
    else
      render("png_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @png = Png.find(params.fetch("id_to_remove"))

    @png.destroy

    redirect_to("/pngs", :notice => "Png deleted successfully.")
  end
end
