module CRUD
  extend ActiveSupport::Concern
  include CommonErrors

  included do
    attr_reader :collection, :obj, :serializer
  end

  def index(data=collection)
    if stale?(data, public: true)
      render json: data, each_serializer: serializer
    end
  end

  def show
    if stale?(obj, public: true)
      render json: obj, serializer: serializer
    end
  end

  def create
    @obj = obj_class.new(obj_params)

    if @obj.save
      render json: @obj, serializer: serializer
    else
      render_422 @obj
    end
  end

  def update
    if obj.update obj_params
      render json: obj, serializer: serializer
    else
      render_422
    end
  end

  def destroy
    obj.destroy
    render json: {}, status: 204
  end

end
