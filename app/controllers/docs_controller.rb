class DocsController < ApplicationController
<<<<<<< HEAD
    def index
        @docs = Doc.where(user_id: current_user).order("created_at DESC")
    end

    def show
    end
=======
  before_action :find_doc, only: [:show, :edit, :update, :destroy]
  
  def index
    @docs = Doc.where(user_id: current_user).order("created_at DESC")
  end

  def show
    
  end
>>>>>>> Add styling to Welcome and application.html.erb

  def new
    @doc = current_user.docs.build
  end

  def create
    @doc = current_user.docs.build(doc_params)

    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @doc.update(doc_params)
      redirect_to @doc
    else
      render 'edit'
    end
  end

  def destroy
    @doc.destroy
    redirect_to docs_path
  end

  private

<<<<<<< HEAD
    def find_doc
    end

    def doc_params
    end
=======
  def find_doc
    @doc = Doc.find(params[:id])
  end

  def doc_params
    params.require(:doc).permit(:title, :content)
  end
>>>>>>> Add styling to Welcome and application.html.erb
end
