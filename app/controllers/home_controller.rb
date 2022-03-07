class HomeController < ApplicationController
  
  before_action :set_shop, only: [:top, :hokkaido, :tohoku, :kanto, :chubu, :kansai, :shikoku, :tyugoku, :kyushu]
  skip_before_action :owner_logged_in?
  skip_before_action :user_logged_in?

  def top
    @shop = Shop.order(:updated_at).last
  	@shops_random_top = Shop.where(paidmember: 0).order("RANDOM()").limit(6)
    @pickup_select_shops = Shop.where(paidicon4: 1).order("RANDOM()").limit(6)
    # mysqlは"RAND"にしないといけない
    @shops_new_top = Shop.where(paidmember: 0).order(created_at: :desc)

    @number_of_stores_chubu = Shop.where(addres1:["愛知県", "岐阜県", "長野県", "静岡県", 
                                                  "山梨県", "福井県", "石川県", "富山県", 
                                                  "新潟県"]
                                        ).count
    @number_of_stores_kanto = Shop.where(addres1:["東京都", "神奈川県", "千葉県", "埼玉県", 
                                                  "茨城県", "栃木県", "群馬県"]
                                        ).count
    @number_of_stores_kansai = Shop.where(addres1:["大阪府", "京都府", "兵庫県", "滋賀県", 
                                                  "奈良県", "和歌山県", "三重県"]
                                        ).count
    @number_of_stores_tohoku = Shop.where(addres1:["青森県", "秋田県", "岩手県", "山形県", 
                                                  "宮城県", "福島県"]
                                        ).count
    @number_of_stores_hokkaido = Shop.where(addres1:["北海道道央", "北海道道南", "北海道道東",
                                                     "北海道道北",]
                                        ).count
    @number_of_stores_tyugoku = Shop.where(addres1:["岡山県", "広島県", "鳥取県", "島根県", 
                                                  "山口県"]
                                        ).count
    @number_of_stores_shikoku = Shop.where(addres1:["香川県", "愛媛県", "徳島県", "高知県"]
                                        ).count
    @number_of_stores_kyushu = Shop.where(addres1:["福岡県", "大分県", "佐賀県", "長崎県", 
                                                  "熊本県", "宮崎県", "鹿児島県", "沖縄県"]
                                        ).count
  end

  def search
    # 検索窓に入力された場合
  	@shops = Shop.search(params[:search]).order(updated_at: :desc).page(params[:page]).per(5)
    # 入力されたキーワードその1
    @keyword = params[:search]
    # 入力されたキーワードその2
    @searchword = params[:search]

    if @searchword = nil then
    # 入力されたキーワードその2がnilの場合、ランダムですべてを表示する
      @shops_random_top = Shop.all.order("RANDOM()").limit(6)
    
    else
      
    # 入力されたキーワードその2がnilではない場合、@shops_firstに、最初に検索にヒットしたshopを代入
      @shops_first = Shop.search(params[:search]).first
       begin
        # @shops_first_columnに@shops_firstのaddres1を代入(都道府県が代入された)
          @shops_first_column = @shops_first.addres1
        rescue
          # 失敗時はランダムですべてを表示する
          @shops_random_top = Shop.all.order("RANDOM()").limit(6)
        end
      
      @shops_random_top = Shop.where(paidmember: 0, addres1: @shops_first_column).order("RANDOM()").limit(6)
        # mysqlは"RAND"にしないといけない
    end
    @pickup_select_shops = Shop.where(paidicon4: 1, addres1: @shops_first_column).order("RANDOM()").limit(6)
    @shops_new_top = Shop.where(paidmember: 1).order(created_at: :desc)
  end

  def list
  	@shops = Shop.all.order(created_at: :desc).page(params[:page]).per(5)
  end

  def hokkaido
    @number_of_stores_douou = Shop.where(addres1:["北海道道央"]).count
    @number_of_stores_dounan = Shop.where(addres1:["北海道道南"]).count
    @number_of_stores_doutou = Shop.where(addres1:["北海道道東"]).count
    @number_of_stores_douhoku = Shop.where(addres1:["北海道道北"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["北海道道央","北海道道南","北海道道東",
                                                         "北海道道北"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidmember: 1, addres1: ["北海道道央","北海道道南","北海道道東",
                                                            "北海道道北"]).order("RANDOM()").limit(6)
  end

  def tohoku
    @number_of_stores_aomori = Shop.where(addres1:["青森県"]).count
    @number_of_stores_akita = Shop.where(addres1:["秋田県"]).count
    @number_of_stores_iwate = Shop.where(addres1:["岩手県"]).count
    @number_of_stores_yamagata = Shop.where(addres1:["山形県"]).count
    @number_of_stores_miyagi = Shop.where(addres1:["宮城県"]).count
    @number_of_stores_fukushima = Shop.where(addres1:["福島県"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["青森県","秋田県","岩手県",
                                                         "山形県","宮城県","福島県"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidmember: 1, addres1: ["青森県","秋田県","岩手県",
                                                            "山形県","宮城県","福島県"]).order("RANDOM()").limit(6)
  end

  def kanto
    @number_of_stores_tokyo = Shop.where(addres1:["東京都"]).count
    @number_of_stores_kanagawa = Shop.where(addres1:["神奈川県"]).count
    @number_of_stores_chiba = Shop.where(addres1:["千葉県"]).count
    @number_of_stores_saitama = Shop.where(addres1:["埼玉県"]).count
    @number_of_stores_ibaraki = Shop.where(addres1:["茨城県"]).count
    @number_of_stores_tochigi = Shop.where(addres1:["栃木県"]).count
    @number_of_stores_gunma = Shop.where(addres1:["群馬県"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["東京都","神奈川県","千葉県",
                                                         "埼玉県","茨城県","栃木県",
                                                         "群馬県"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidicon4: 1, addres1: ["東京都","神奈川県","千葉県",
                                                            "埼玉県","茨城県","栃木県",
                                                            "群馬県"]).order("RANDOM()").limit(6)
  end

  def chubu
    @number_of_stores_aichi = Shop.where(addres1:["愛知県"]).count
    @number_of_stores_gifu = Shop.where(addres1:["岐阜県"]).count
    @number_of_stores_nagano = Shop.where(addres1:["長野県"]).count
    @number_of_stores_shizuoka = Shop.where(addres1:["静岡県"]).count
    @number_of_stores_yamanashi = Shop.where(addres1:["山梨県"]).count
    @number_of_stores_toyama = Shop.where(addres1:["富山県"]).count
    @number_of_stores_ishikawa = Shop.where(addres1:["石川県"]).count
    @number_of_stores_nigata = Shop.where(addres1:["新潟県"]).count
    @number_of_stores_fukui = Shop.where(addres1:["福井県"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["愛知県","岐阜県","長野県",
                                                         "静岡県","山梨県","富山県",
                                                         "石川県","新潟県","福井県"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidicon4: 1, addres1: ["愛知県","岐阜県","長野県",
                                                            "静岡県","山梨県","富山県",
                                                            "石川県","新潟県","福井県"]).order("RANDOM()").limit(6)
  end

  def kansai
    @number_of_stores_osaka = Shop.where(addres1:["大阪府"]).count
    @number_of_stores_kyoto = Shop.where(addres1:["京都府"]).count
    @number_of_stores_hyogo = Shop.where(addres1:["兵庫県"]).count
    @number_of_stores_shiga = Shop.where(addres1:["滋賀県"]).count
    @number_of_stores_nara = Shop.where(addres1:["奈良県"]).count
    @number_of_stores_wakayama = Shop.where(addres1:["和歌山県"]).count
    @number_of_stores_mie = Shop.where(addres1:["三重県"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["大阪府","京都府","兵庫県",
                                                         "滋賀県","奈良県","和歌山県",
                                                         "三重県"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidicon4: 1, addres1: ["大阪府","京都府","兵庫県",
                                                            "滋賀県","奈良県","和歌山県",
                                                            "三重県"]).order("RANDOM()").limit(6)
  end

  def shikoku
    @number_of_stores_kagawa = Shop.where(addres1:["香川県"]).count
    @number_of_stores_ehime = Shop.where(addres1:["愛媛県"]).count
    @number_of_stores_tokushima = Shop.where(addres1:["徳島県"]).count
    @number_of_stores_kochi = Shop.where(addres1:["高知県"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["香川県","愛媛県","徳島県",
                                                         "高知県"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidmember: 1, addres1: ["香川県","愛媛県","徳島県",
                                                            "高知県"]).order("RANDOM()").limit(6)
  end

  def tyugoku
    @number_of_stores_tottori = Shop.where(addres1:["鳥取県"]).count
    @number_of_stores_shimane = Shop.where(addres1:["島根県"]).count
    @number_of_stores_okayama = Shop.where(addres1:["岡山県"]).count
    @number_of_stores_hiroshima = Shop.where(addres1:["広島県"]).count
    @number_of_stores_yamaguchi = Shop.where(addres1:["山口県"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["鳥取県","島根県","岡山県",
                                                         "広島県","山口県"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidicon4: 1, addres1: ["鳥取県","島根県","岡山県",
                                                            "広島県","山口県"]).order("RANDOM()").limit(6)
  end

  def kyushu
    @number_of_stores_fukuoka = Shop.where(addres1:["福岡県"]).count
    @number_of_stores_oita = Shop.where(addres1:["大分県"]).count
    @number_of_stores_saga = Shop.where(addres1:["佐賀県"]).count
    @number_of_stores_nagasaki = Shop.where(addres1:["長崎県"]).count
    @number_of_stores_kumamoto = Shop.where(addres1:["熊本県"]).count
    @number_of_stores_miyazaki = Shop.where(addres1:["宮崎県"]).count
    @number_of_stores_kagoshima = Shop.where(addres1:["鹿児島県"]).count
    @number_of_stores_okinawa = Shop.where(addres1:["沖縄県"]).count
    @shops_new_top = Shop.where(paidmember: 0, addres1: ["福岡県","大分県","佐賀県",
                                                         "長崎県","熊本県","宮崎県",
                                                         "鹿児島県","沖縄県"]).order(created_at: :desc)
    @shops_random_top = Shop.where(paidmember: 1, addres1: ["福岡県","大分県","佐賀県",
                                                            "長崎県","熊本県","宮崎県",
                                                            "鹿児島県","沖縄県"]).order("RANDOM()").limit(6)
  end

  def recruit
  end

  def free
    @sender = Sender.new
  end

  def paid
    @sender = Sender.new
  end

  def non_profit
    @sender = Sender.new
  end

  def recruit_adv
    @sender = Sender.new
  end

  def terms
  end

  def privacy_policy
  end

  def free_edit
  end

  def member_inquiry
    @shop = Shop.find_by(id: session[:user_id])
    @sender = Sender.new
  end

  def free_create
    @sender = Sender.new(category:"0",
                         shopname:params[:shopname], 
                         yomi:params[:yomi],
                         tel1:params[:tel1],
                         tel2:params[:tel2],
                         tel3:params[:tel3],
                         area:params[:area],
                         addres:params[:addres],
                         charge:params[:charge],
                         tel4:params[:tel4],
                         tel5:params[:tel5],
                         tel6:params[:tel6],
                         chargemail:params[:chargemail],
                         question:params[:question]
                         )
    if @sender.save
      redirect_to("/recruit/send_completely")
    else
      render("free")
    end
  end

  def paid_create
    @sender = Sender.new(category:"1",
                         shopname:params[:shopname], 
                         yomi:params[:yomi],
                         tel1:params[:tel1],
                         tel2:params[:tel2],
                         tel3:params[:tel3],
                         area:params[:area],
                         addres:params[:addres],
                         charge:params[:charge],
                         tel4:params[:tel4],
                         tel5:params[:tel5],
                         tel6:params[:tel6],
                         chargemail:params[:chargemail],
                         question:params[:question]
                         )
    if @sender.save
      redirect_to("/recruit/send_completely")
    else
      render("paid")
    end
  end

  def non_profit_create
    @sender = Sender.new(category:"2",
                         shopname:params[:shopname], 
                         yomi:params[:yomi],
                         tel1:params[:tel1],
                         tel2:params[:tel2],
                         tel3:params[:tel3],
                         area:params[:area],
                         addres:params[:addres],
                         charge:params[:charge],
                         tel4:params[:tel4],
                         tel5:params[:tel5],
                         tel6:params[:tel6],
                         chargemail:params[:chargemail],
                         question:params[:question]
                         )
    if @sender.save
      redirect_to("/recruit/send_completely")
    else
      render("non_profit")
    end
  end

  def adv_create
    @sender = Sender.new(category:"3",
                         shopname:params[:shopname], 
                         yomi:params[:yomi],
                         tel1:params[:tel1],
                         tel2:params[:tel2],
                         tel3:params[:tel3],
                         area:params[:area],
                         addres:params[:addres],
                         charge:params[:charge],
                         tel4:params[:tel4],
                         tel5:params[:tel5],
                         tel6:params[:tel6],
                         chargemail:params[:chargemail],
                         question:params[:question]
                         )
    if @sender.save
      redirect_to("/recruit/send_completely")
    else
      render("recruit_adv")
    end
  end

  def member_inquiry_create
    @shop = Shop.find_by(id: session[:user_id])
    @sender = Sender.new(category:"4",
                         shopname:@shop.shopname, 
                         yomi:"-",
                         tel1:"000",
                         tel2:"0000",
                         tel3:"0000",
                         area:@shop.area,
                         addres:@shop.addres2,
                         charge:@shop.name,
                         tel4:"000",
                         tel5:"0000",
                         tel6:"0000",
                         chargemail:@shop.mail,
                         question:params[:question]
                         )
    if @sender.save
      redirect_to("/recruit/send_completely")
    else
      render("member_inquiry")
    end
  end

  def send_completely
  end

  def adv
  end

  private

  def user_params
    params.require(:sender).permit(
      :shopname, :yomi, :tel1,
      :tel2, :tel3, :area,
      :addres, :charge, :tel4,
      :tel5, :tel6, :chargemail,
      :question, 
      )
  end

  def set_shop
    @shops = Shop.all.order(created_at: :desc)
  end

end
