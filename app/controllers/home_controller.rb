# frozen_string_literal: true

class HomeController < ApplicationController
  # 未ログインユーザー向けの公開トップページ
  skip_before_action :authenticate_user!, only: [:index]

  def index; end
end
