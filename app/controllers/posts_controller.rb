class PostsController < ApplicationController
    def index  
        posts = Post.all
        render json: posts, include: :user
      end 
    
      def show 
        post = Post.find_by(post_params[:id])
        render json: post, include: :comments
      end
    
      def create 
        post = Post.create!(post_params)
        render json: post, status: :created
      end
    
      def update
        post = Post.find_by(id: post_params[:id])
        post.update(post_params)
        render json: post
      end 
    
      def destroy
        post = Post.find_by(id: post_params[:id])
        post.destroy
        head :no_content
      end
    
      private
    
      def post_params
        params.permit(:heading, :content, :picture_link, :user)
      end
end
