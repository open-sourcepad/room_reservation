module CommonErrors
  extend ActiveSupport::Concern

  included do
    attr_reader :obj
  end


  def render_422(_obj = obj)
    render json: {
      message: 'Validation failed',
      errors: _obj.errors.full_messages
    }, status: 422
  end

  def render_401 msg
    render json: {
      message: 'Authorization failed',
      error: msg
    }, status: 401
  end

end
