class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _options = {})
    render json: {
      status: {
        code: 200,
        message: 'User signed in successfuly',
        data: current_user
      }
    }, status: :ok
  end
end
