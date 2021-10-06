class Api::ReviewsController < ApplicationController

    def index
        if params[:movie_id]
            @reviews = Review.where(movie_id: params[:movie_id])
        elsif params[:user_id]
            @reviews = Review.where(user_id: params[:user_id])
        end
    end

    # def show
    #     @review = Review.find(params[:id])
    # end

    # private
    # def review_params
    #     params.require(:review).permit()
    # end

    def create
        @review = Review.create!(review_params)
        @review.user_id = current_user.id
        if @review.save
            render :show
        else
            render json: ["Header can't be blank", "Review can't be blank"], status: 422
        end
    end

    def update
        @review = Review.find(params[:id])

        if @review.update(review_params)
        render :show
        else
        render json: @review.errors.full_messages, status: 422
        end
    end

    def destroy
        @review = Review.find(params[:id])

        if @review.destroy
        render :show
        else
        render json: @review.errors.full_messages, status: 422
        end
    end

    private

    def review_params
        params.require(:review).permit(
            :heading,
            :review,
            :spoilers,
            :movie_id,
            :user_id,
            :rating
        )
    end
end