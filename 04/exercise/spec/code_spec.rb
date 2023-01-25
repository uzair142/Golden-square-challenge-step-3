require 'code'


describe TimeError do
    
    it'should return the server time difference' do
        http = double :http
        allow(http).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return(
            {"abbreviation":"GMT","client_ip":"2a00:23c7:722a:d601:c062:a722:b182:6cad","datetime":
            "2023-01-24T21:13:30.938115+00:00","day_of_week":2,"day_of_year":24,"dst":false,
            "dst_from":nil,"dst_offset":0,"dst_until":nil,"raw_offset":0,"timezone":
            "Europe/London","unixtime":1674594810,"utc_datetime":"2023-01-24T21:13:30.938115+00:00",
            "utc_offset":"+00:00","week_number":4}.to_s)
        task = TimeError.new(http)
        
        time_now = Time.new(2023, 1, 24, 13, 31 ,45)
      #  Time.now = '01:30'
        expect(task.error(time_now)).to eq(123)
    end
end