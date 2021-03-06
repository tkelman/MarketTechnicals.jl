using MarketTechnicals, MarketData, FactCheck 

facts("Momentum") do
  
    context("rsi") do
        @fact rsi(cl, 14).values[end]              --> roughly(55.84921708898833) # TTR value is 55.84922
        @fact rsi(cl, 14, wilder=true).values[end] --> roughly(55.95931797240996) # TTR value is 55.95932
        @fact rsi(cl, 14).timestamp[end]           --> Date(2001,12,31)
    end
    
    context("macd") do 
        @fact macd(cl).values[end, 1] --> roughly(0.42117515229271874) # TTR value with percent=FALSE is 0.421175152
        @fact macd(cl).values[end, 2] --> roughly(0.44142752613313185) # TTR value with percent=FALSE is 0.4414275
        @fact macd(cl).timestamp[end] --> Date(2001,12,31)
    end
        
#     context("cci") do 
#         @fact cci(ohlc).values[1]      --> roughly(-38.931614)      # TTR::CCI value is -38.931614
#         @fact cci(ohlc).values[end]    --> roughly(46.3511339)      # TTR::CCI value is 46.3511339
#         @fact cci(ohlc).timestamp[end] --> Date(2001,12,31)
#     end
end
