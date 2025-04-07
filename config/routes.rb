Rails.application.routes.draw do
  resources :orders do
    collection do
      get 'print'  # 発注一覧印刷用のアクション
    end
  end

  # ホーム画面
  root 'home#index'  # ルートURLをホーム画面に設定
  get 'home', to: 'home#index'
end