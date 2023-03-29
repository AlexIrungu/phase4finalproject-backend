class UsersController < ApplicationController
    def create
        if user.valid?
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

     def index
    #     user = User.current_user
        # if user != "Error"
        #     render json: user, only: [:id, :username], include: [:notes, :books]
        # else 
        #     render json: {user: {id: "", username: '', notes: [], books: []}}    # Return the current user or return an empty user object to initialize state when App mounts before a user has signed in
        # end

        users = User.all
        render json: users

    end
    def update
        # user_book = UserBook.find_by(user_id: params[:id], book_id: params[:book_id])
        # if user_book.destroy
        #     book = Book.find(params[:book_id])
        #     render json: book
        # else
        #     render json: {error: "Error removing book from user's collection"}

        user = @current_user
        user.update(user_params)
        render json: user
    end

    def destroy
        @current_user.destroy 
        head :no_content
    end

    private 

    def user_params
        params.permit(:email, :first_name, :last_name,  :password_digest)
    end
end
