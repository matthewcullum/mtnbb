class ArticlesController < ApplicationController
	layout :admin_layout_if_admin_signed_in

	def index
		@articles = Article.order_by_date_desc.paginate page: params[:page], per_page: 5
	end

	def new
		@article = Article.new
	end

	def create
		article = Article.new body: params[:body], title: params[:title], published: publish?

		if article.valid?
			article.published = publish?
			article.save
			redirect_to article_path(article.id)
		else
			redirect_to :back
		end
	end

	def update
		article = Article.find(params[:id])

		attributes = params[:article]
		if publish?
			attributes[:published] = true
		elsif unpublish?
			attributes[:published] = false
		end

		attributes.permit!

		article.update(attributes)

		redirect_to :back
	end

	def publish?
		params[:publish] ? true : false
	end

	def unpublish?
		params[:unpublish] ? true : false
	end

	def edit
		@article = get_article_by_params_id
	end

	def show
		@article = get_article_by_params_id
	end

	def get_article_by_params_id
		Article.find(params[:id])
	end

end
