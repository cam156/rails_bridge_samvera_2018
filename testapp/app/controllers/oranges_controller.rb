# frozen_string_literal: true

class OrangesController < ApplicationController
  def index
    @oranges = Orange.all
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @orange = Orange.new
  end
end
