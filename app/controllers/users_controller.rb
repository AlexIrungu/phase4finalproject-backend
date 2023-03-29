class UsersController < ApplicationController
    def create
        user = User.find_or_create_by(username: params[:username])
        #set the class variable when a user signs in on the front end
        User.set_current_user(user.id)

        render json: user 
        #, only: [:id, :username], include: :[:notes, :books]
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
        user_book = UserBook.find_by(user_id: params[:id], book_id: params[:book_id])
        if user_book.destroy
            book = Book.find(params[:book_id])
            render json: book
        else
            render json: {error: "Error removing book from user's collection"}
    end
end
