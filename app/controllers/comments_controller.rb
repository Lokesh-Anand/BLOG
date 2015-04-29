class CommentsController < ApplicationController
 def create
                
                @post = Post.find(params[:post_id])
                @comment = @post.comments.create(params[:comment])       
                @comment.user_id= current_user.id
                 @comment.save 
                redirect_to @post
        end
end
