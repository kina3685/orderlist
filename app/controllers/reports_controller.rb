class ReportsController < ApplicationController
  def monthly_summary
    # 月ごとの注文合計を取得
    @monthly_totals = Order
      .select("DATE_FORMAT(created_at, '%Y-%m') AS month, SUM(total_price) AS total_amount")
      .group("DATE_FORMAT(created_at, '%Y-%m')")
      .order("month DESC")
    
    # レスポンスで使えるように、必要に応じてOpenStructでラップ
    @monthly_totals = @monthly_totals.map do |record|
      OpenStruct.new(month: Date.strptime(record.month, "%Y-%m"), total_amount: record.total_amount)
    end
  end
end