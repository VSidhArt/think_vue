class Api::V1::Staff::BaseController < ApplicationController
  before_action :authenticate_staff!
end
