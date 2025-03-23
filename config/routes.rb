Rails.application.routes.draw do
  resources :orders do
    collection do
      get 'print'  # 発注一覧印刷用のアクション
    end
  end
end