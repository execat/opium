class HomeController < ApplicationController
  def index
    @backend = backend.select { |key, value| key.in?(backend_visible) }
    @frontend = frontend.select { |key, value| key.in?(frontend_visible) }
    @additional = additional.select  { |key, value| key.in?(additional_visible) }
  end

  def about
  end

  private
  include Info::Backend
  include Info::Frontend
  include Info::Additional
end
