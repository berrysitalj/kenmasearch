class PostsController < ApplicationController
  skip_before_action :owner_logged_in?
  skip_before_action :user_logged_in?
  
  def index
    
  end

  def show
  	
  end

  def new
  	@item = RegisteredItem.new
  end

  def create
  	@item = RegisteredItem.new(userid:params[:userid], 
                         pass:params[:pass],
                         shopname:params[:shopname],
                         shoptel:params[:shoptel],
                         yomi:params[:yomi],
                         addres1:params[:addres1],
                         addres2:params[:addres2],
                         area:params[:area],
                         paidmember:params[:paidmember],
                         mail:params[:mail],
                         name:params[:name],
                         tel:params[:tel],
                         station:params[:station],
                         onfoot:params[:onfoot],
                         businessday:params[:businessday],
                         businesstime1:params[:businesstime1],
                         businesstime2:params[:businesstime2],
                         pricelist:params[:pricelist],
                         topphoto:params[:topphoto],
                         agegroup:params[:agegroup],
                         reservation:params[:reservation],
                         freeicon1:params[:freeicon1],
                         freeicon2:params[:freeicon2],
                         freeicon3:params[:freeicon3],
                         freeicon4:params[:freeicon4],
                         freeicon11:params[:freeicon11],
                         freeicon12:params[:freeicon12],
                         freeicon13:params[:freeicon13],
                         freeicon14:params[:freeicon14],
                         freeicon21:params[:freeicon21],
                         freeicon22:params[:freeicon22],
                         freeicon23:params[:freeicon23],
                         freeicon24:params[:freeicon24],
                         freeicon25:params[:freeicon25],
                         freeicon26:params[:freeicon26],
                         paidicon1:params[:paidicon1],
                         paidicon2:params[:paidicon2],
                         topcomment:params[:topcomment],                         
                         comment:params[:comment],
                         photo1:params[:photo1],
                         photo2:params[:photo2],
                         tablenum:params[:tablenum],
                         tabletype:params[:tabletype],
                         service:params[:service],
                         system:params[:system],
                         ratio:params[:ratio],
                         rule:params[:rule],
                         timeup:params[:timeup],
                         homepage1:params[:homepage1],
                         homepage2:params[:homepage2],
                         homepage3:params[:homepage3],
                         homepage4:params[:homepage4],
                         opening:params[:opening]
                         )
    if @item.save
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end

  def edit
    @item = RegisteredItem.find_by(userid: params[:id])
  end
  
  def update
    @item = RegisteredItem.find_by(userid:params[:id])
    @item.pass = params[:pass]
    @item.mail = params[:mail]
    @item.name = params[:name]
    @item.tel = params[:tel]
    @item.shoptel = params[:shoptel]
    @item.yomi = params[:yomi]
    @item.shoptel = params[:shoptel]
    
    @item.station = params[:station]
    @item.onfoot = params[:onfoot]
    @item.businessday = params[:businessday]
    @item.businesstime1 = params[:businesstime1]
    @item.pricelist = params[:pricelist]
    @item.topphoto = params[:topphoto]
    @item.photo1 = params[:photo1]
    @item.photo2 = params[:photo2]
    @item.agegroup = params[:agegroup]   
    @item.reservation = params[:reservation]
    @item.topcomment = params[:topcomment]
    @item.comment = params[:comment]
    @item.tablenum = params[:tablenum]
    @item.tabletype = params[:tabletype]
    @item.service = params[:service]
    @item.system = params[:system]
    @item.ratio = params[:ratio]
    @item.rule = params[:rule]
    @item.timeup = params[:timeup]
    @item.homepage1 = params[:homepage1]
    @item.homepage2 = params[:homepage2]
    @item.homepage3 = params[:homepage3]
    @item.homepage4 = params[:homepage4]
    @item.opening = params[:opening]
    
    @item.freeicon1 = params[:freeicon1]
    @item.freeicon2 = params[:freeicon2]
    @item.freeicon3 = params[:freeicon3]
    @item.freeicon4 = params[:freeicon4]
    @item.freeicon11 = params[:freeicon11]
    @item.freeicon12 = params[:freeicon12]
    @item.freeicon13 = params[:freeicon13]
    @item.freeicon14 = params[:freeicon14]
    @item.freeicon21 = params[:freeicon21]
    @item.freeicon22 = params[:freeicon22]
    @item.freeicon23 = params[:freeicon23]
    @item.freeicon24 = params[:freeicon24]
    @item.freeicon25 = params[:freeicon25]
    @item.freeicon26 = params[:freeicon26]
    @item.paidicon1 = params[:paidicon1]
    @item.paidicon2 = params[:paidicon2]

    if @item.save
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end
  
  def destroy
    
  end

  def item_params
    params.require(:item).permit(:image)
  end

end
