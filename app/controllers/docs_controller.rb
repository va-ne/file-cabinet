class DocsController < ApplicationController
    def index
    end

    def show
    end

    def new
<<<<<<< HEAD
    end

    def create
=======
        @doc = current_user.docs.build
    end

    def create
        @doc = current_user.docs.build(doc_params)

        if @doc.save
            redirect_to @doc
        else
            render 'new'
        end
>>>>>>> Association between User and Docs
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

    def find_doc
    end

    def doc_params
    end
end
