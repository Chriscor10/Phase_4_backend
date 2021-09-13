class UsersController < ApplicationController
    def index  
        users = User.all
        render json: users
      end 
    
      def show 
        user = User.find(params[:id])
        render json: user, include: :posts
      end
    
      def create 
        user = User.create(user_params)
        render json: user, status: :created
      end
    
      def update
        user = User.find_by(id: params[:id])
        user.update(user_params)
        render json: user
      end 
    
      def destroy
        user = User.find_by(id: params[:id])
        user.destroy
        head :no_content
      end
    
      private
    
      def user_params
        params.permit(:name, :background_image, :picture_link, :user, :password_digest)
      end
    
end
