class StoresController < ApplicationController
	skip_before_action :user_logged_in?

  def index
  	@shop = Shop.all.order(updated_at: :desc).page(params[:page]).per(50)
  end

  def show
  	@shop = Shop.all.order(updated_at: :desc).page(params[:page]).per(50)
  end

  def confirm
    @shop = Shop.all
    @columns_name = Shop.attribute_names
  end

  def new
  	@shop = Shop.new
  end

  def create
  	@shop = Shop.new(userid:params[:userid], 
                         pass:params[:pass],
                         shopname:params[:shopname],
                         shoptel:params[:shoptel],
                         addres1:params[:addres1],
                         addres2:params[:addres2],
                         area:params[:area],
                         station:params[:station],
                         freeicon1:params[:freeicon1],
                         freeicon2:params[:freeicon2],
                         freeicon3:params[:freeicon3],
                         freeicon11:params[:freeicon11],
                         freeicon12:params[:freeicon12],
                         freeicon13:params[:freeicon13],
                         freeicon14:params[:freeicon14],
                         topcomment: "",
                         yomi: "",
                         paidmember: "0",
                         mail: "",
                         tel: "",
                         name: "",
                         onfoot: "",
                         businessday: "",
                         businesstime1: "",
                         businesstime2: "",
                         pricelist: "",
                         topphoto: "",
                         agegroup: "",
                         reservation: "",
                         comment: "",
                         tablenum: "",
                         tabletype: "",
                         service: "",
                         system: "",
                         ratio: "",
                         rule: "",
                         timeup: "",
                         homepage1: "",
                         homepage2: "",
                         homepage3: "",
                         homepage4: "",
                         opening: ""
                         )
    if @shop.save
      redirect_to("/stores/index")
    else
      render("stores/new")
    end
  end

  def edit
  	@shop = Shop.find_by(userid: params[:id])
  end

  def update
  	@shop = Shop.find_by(userid:params[:id])
    @shop.userid = params[:userid]
    @shop.pass = params[:pass]
    @shop.shopname = params[:shopname]
    @shop.shoptel = params[:shoptel]
    @shop.yomi = params[:yomi]
    @shop.addres1 = params[:addres1]
    @shop.addres2 = params[:addres2]
    @shop.area = params[:area]
    @shop.paidmember = params[:paidmember]
    
    @shop.mail = params[:mail]
    @shop.name = params[:name]
    @shop.tel = params[:tel]
    @shop.station = params[:station]
    @shop.onfoot = params[:onfoot]
    @shop.businessday = params[:businessday]
    @shop.businesstime1 = params[:businesstime1]
    @shop.businesstime2 = params[:businesstime2]
    @shop.pricelist = params[:pricelist]
    @shop.topphoto = params[:topphoto]
    @shop.agegroup = params[:agegroup]
    
    @shop.reservation = params[:reservation]
    @shop.freeicon1 = params[:freeicon1]
    @shop.freeicon2 = params[:freeicon2]
    @shop.freeicon3 = params[:freeicon3]
    @shop.freeicon4 = params[:freeicon4]
    @shop.freeicon5 = params[:freeicon5]
    @shop.freeicon6 = params[:freeicon6]
    @shop.freeicon11 = params[:freeicon11]
    @shop.freeicon12 = params[:freeicon12]
    @shop.freeicon13 = params[:freeicon13]
    @shop.freeicon14 = params[:freeicon14]
    @shop.freeicon15 = params[:freeicon15]
    @shop.freeicon16 = params[:freeicon16]
    @shop.freeicon21 = params[:freeicon21]
    @shop.freeicon22 = params[:freeicon22]
    @shop.freeicon23 = params[:freeicon23]
    @shop.freeicon24 = params[:freeicon24]
    @shop.freeicon25 = params[:freeicon25]
    @shop.freeicon26 = params[:freeicon26]
    @shop.freeicon27 = params[:freeicon27]
    @shop.paidicon1 = params[:paidicon1]
    @shop.paidicon2 = params[:paidicon2]
    @shop.paidicon3 = params[:paidicon3]
    @shop.paidicon4 = params[:paidicon4]
    @shop.topcomment = params[:topcomment]
    @shop.comment = params[:comment]
    @shop.photo1 = params[:photo1]
    @shop.photo2 = params[:photo2]
    @shop.tablenum = params[:tablenum]
    @shop.tabletype = params[:tabletype]
    @shop.service = params[:service]
    @shop.system = params[:system]
    @shop.ratio = params[:ratio]
    @shop.rule = params[:rule]
    @shop.timeup = params[:timeup]
    @shop.homepage1 = params[:homepage1]
    @shop.homepage2 = params[:homepage2]
    @shop.homepage3 = params[:homepage3]
    @shop.homepage4 = params[:homepage4]
    @shop.opening = params[:opening]

    if @shop.save
      redirect_to("/stores/index")
    else
      render("stores/edit")
    end
  end

  def destroy
  	@shop = Shop.find_by(id: params[:id])
    @shop.destroy
    flash[:notice] = "削除しました"
    redirect_to("/stores/index")
  end
end
