class ProductsController < OpenReadController
  before_action :set_product, only: [:update, :destroy]

  def index
    @products = Product.all

    render json: @products
  end

  def show
    render json: Product.find(params[:id])
  end

  #  # POST /products
  def create
    print product_params
    @product = current_user.products.build(product_params)

    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    @product = current_user.products.find(params[:id])

    if @product.update(product_params)
      head :no_content
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    head :no_content
  end

  def set_product
    @product = current_user.products.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:before_photo_url, :description, :price,
                                    :after_photo_url)
  end

  private :set_product, :product_params
end
