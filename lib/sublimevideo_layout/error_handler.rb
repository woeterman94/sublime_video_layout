module SublimevideoLayout
  module ErrorHandler
    extend ActiveSupport::Concern

    included do
      include ActiveSupport::Rescuable

      rescue_from ActionController::ActionControllerError, with: :render_404
      rescue_from Exception, with: :render_500
    end

    private

    def render_404(exception)
      respond_to do |format|
        format.html { render template: 'errors/error_404', layout: 'layouts/error', status: 404 }
        format.all  { render nothing: true, status: 404 }
      end
    end

    def render_500(exception)
      respond_to do |format|
        format.html { render template: 'errors/error_500', layout: 'layouts/error', status: 500 }
        format.all  { render nothing: true, status: 500 }
      end
    end

  end
end