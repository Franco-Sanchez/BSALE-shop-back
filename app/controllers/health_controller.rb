class HealthController < ApplicationController
  def index
    render json: { ok: 'Welcome' }
  end
end
