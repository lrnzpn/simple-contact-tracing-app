class StoresController < ApplicationController
  def index
    if(current_store.admin?)
        @stores = Store.where("id > 1") # where store is not mall admin
        @customers = Customer.all
    elsif(current_store.user?)
        @store = Store.find_by_slug(params[:slug])
        @customers = Customer.where(store_id: current_store.id)
    end
  end

  def show
    if(current_store.admin?)
        @store = Store.find_by_slug(params[:slug])
        @customers = Customer.where(store_id: @store.id)
    elsif(current_store.user?)
        @store = Store.find_by_slug(params[:slug])
        @customers = Customer.where(store_id: current_store.id)
    end
    
  end
end
