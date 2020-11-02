class RecordsController < ApplicationController
  def index
    @records = Record.all
  end

  def show
    @record = Record.find(params[:id])
  end

  def new
    @record = Record.new
  end
 
  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to records_path
    else
      flash.now[:notice] = "※文字を入力してください"
      render :new
    end
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update 
    @record = Record.find(params[:id])
    if @record.update(record_params)
      redirect_to records_path, notice: "編集完了！"
    else
      flash.now[:notice] = "※文字を入力してください"
      render :edit
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to records_path, notice:"削除しました"
  end


  private

  def record_params
    params.require(:record).permit(:content, :start_time)
  end

end
