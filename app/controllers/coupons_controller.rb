class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    # byebug
    Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
    redirect_to coupon_path(Coupon.last)
  end

  def show
    @coupon = Coupon.find(params[:id])
  end
end
