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
        if(@store.id == 1)
            @customers = Customer.search(params[:search])
            @all_customers = Customer.all
        else
            @customers = Customer.where(store_id: @store.id)
            # .where("created_at > ?", Time.now-5.days)
        end  
    elsif(current_store.user?)
        @store = Store.find_by_slug(params[:slug])
        @customers = Customer.where(store_id: current_store.id)
    end
    
  end

  private 

  def store_params
    params.require(:customer).permit(:name, :email_address, :mobile_number, :search)
  end
end
