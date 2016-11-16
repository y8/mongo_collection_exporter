class Server
  class Config < Server
    def metrics
      [Metric::Mongod.new(raw_metrics, labels)]
    end

    def raw_metrics
      run(selector: { serverStatus: 1 }, db_name: 'admin')
    end
  end
end
