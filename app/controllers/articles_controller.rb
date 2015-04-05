class ArticlesController < ApplicationController
	layout :admin_layout_if_admin_signed_in
	@markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML.new(render_options = {})

	def index
		@articles = Article.order_by_date_desc.paginate page: params[:page], per_page: 5
	end

	def new
		@article = Article.new
	end

	def create
		attributes = params[:article]
		article = Article.create body: attributes[:body], title: attributes[:title], published: attributes[:published]
		# render text: article.errors.full_messages
		redirect_to article_path(id: article.id)
	end

	def update
		article = Article.find(params[:id])

		attributes = params[:article]

		attributes.permit!

		article.update(attributes)

		redirect_to article_path(article.id)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def show
		@article = Article.find(params[:id])
	end

end
