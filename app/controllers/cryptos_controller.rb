class CryptosController < ApplicationController
  def search
  	@devise = 0
  	@name = CryptosSearch.new.res_name
  	@index = CryptosSearch.new.res_price
  	@devise = params[:devise]
  	value = @name.index(@devise).to_i  	
  	@price = @index[value]
  end
end
