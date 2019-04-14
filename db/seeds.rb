f = 'storage/NAV-HISTORY.txt'
funds = {}
funds_history = {}
Fund.transaction do
  File.readlines(f).each do |line|
    line = line.gsub!(/\r\n?/, "").split(";")
    code = line[0]
    name = line[1]
    nav = line[4]
    date = Date.strptime(line[7],"%d-%b-%Y")
    begin
      if !funds[code]
        funds[code] = name
        fund = Fund.create(
          :code => line[0],
          :name => line[1],
        )
      else
        fund = Fund.find_by_code(code)
      end

      fh = FundHistory.create(:fund_id => fund.id, :nav => nav, :date => date)

      puts fund.inspect
      puts fh.inspect
    rescue => e
      puts e
      puts line
    end
  end
end
