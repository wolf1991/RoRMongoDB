MongoMapper.connection = Mongo::Connection.new('localhost', 27017)


MongoMapper.database ='rormongodb'#通过指定Rails运行环境参数，我们可以在不同的运行环境下创建互不干扰的数据，为了简单起见，没有为不同的环境指定不同的数据

if defined?(PhusionPassenger)
  
   PhusionPassenger.on_event(:starting_worker_process)do|forked|
  
     MongoMapper.connection.connectifforked
  
   end
  
end