class TestController < ApplicationController

  	def index
  		value = params['number']
  		if value == "" || value == 0
  			@num = 0
  		else
  			@num = params['number']
  		end
  	end

  	def show #100 50 20 10 5 1 .25 .10 .05 .01 
  		@num = params['num']
  		@money = params['num'].to_i
  		@money1 = '%.2f' % (params['num'].to_f - @money)
  		@money1 = @money1[2,2].to_i

  		if @money >= 100
  			@sum1 = @money/100
  			@sum1s = @sum1.to_i * 100
  			@money = @money-@sum1s
  		else
  			@sum1 = 0
  		end
  		if @money >= 50
  			@sum2 = @money/50
  			@sum2s = @sum2.to_i * 50
  			@money = @money-@sum2s
  		else
  			@sum2 = 0
  		end
  		if @money >= 20
  			@sum3 = @money/20
  			@sum3s = @sum3.to_i * 20
  			@money = @money-@sum3s
  		else
  			@sum3 = 0
  		end
  		if @money >= 10
  			@sum4 = @money/10
  			@sum4s = @sum4.to_i * 10
  			@money = @money-@sum4s
  		else
  			@sum4 = 0
  		end
  		if @money >= 5
  			@sum5 = @money/5
  			@sum5s = @sum5.to_i * 5
  			@money = @money-@sum5s
  		else
  			@sum5 = 0
  		end
  		if @money >= 1
  			@sum6 = @money/1
  			@sum6s = @sum6.to_i * 1
  			@money = @money-@sum6s
  		else
  			@sum6 = 0
  		end
  		# 25 10 5 1
  		if @money1 >= 25
  			@sum7 = @money1/25
  			@sum7s = @sum7.to_i * 25
  			@money1 = @money1-@sum7s
  		else
  			@sum7 = 0
  		end
  		if @money1 >= 10
  			@sum8 = @money1/10
  			@sum8s = @sum8.to_i * 10
  			@money1 = @money1-@sum8s
  		else
  			@sum8 = 0
  		end
  		if @money1 >= 5
  			@sum9 = @money1/5
  			@sum9s = @sum9.to_i * 5
  			@money1 = @money1-@sum9s
  		else
  			@sum9 = 0
  		end
  		if @money1 >= 1
  			@sum10 = @money1/1
  			@sum10s = @sum10.to_i * 1
  			@money1 = @money1-@sum10s
  		else
  			@sum10 = 0
  		end


 	end

end