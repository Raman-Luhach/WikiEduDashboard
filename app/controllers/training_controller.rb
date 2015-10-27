class TrainingController < ApplicationController
  layout 'training'
  add_breadcrumb 'Training Library', :training_path, only: :slide_view

  def index
    @libraries = TrainingLibrary.all
  end

  def show
    @library = TrainingLibrary.find_by(slug: params[:library_id])
  end

  def training_module
    #add_breadcrumb params[:library_id].titleize, :training_library_path
    #add_breadcrumb params[:module_id].titleize
    @library = TrainingLibrary.find_by(slug: params[:library_id])
    @training_module = TrainingModule.find_by(slug: params[:module_id])
  end

  def slide_view
    add_breadcrumb params[:module_id].titleize, :training_module_path
  end

end
