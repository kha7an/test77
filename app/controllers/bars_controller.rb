class BarsController < ApplicationController
  before_action :set_foo
  before_action :set_bar, only: %i[ show edit update destroy ]

  def index
    @bars = @foo.bars
  end

  def show
  end

  def new
    @bar = @foo.bars.build
  end

  def edit
  end

  def create
    @bar = @foo.bars.build(bar_params)

    if @bar.save
      redirect_to foo_bar_path(@foo, @bar), notice: 'Bar создан'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @bar.update(bar_params)
      redirect_to foo_bar_path(@foo, @bar), notice: 'Bar обновлен'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bar.destroy
    redirect_to foo_bars_url(@foo), notice: 'Bar wудален'
  end

  private
  def set_foo
    @foo = Foo.find(params[:foo_id])
  end

  def set_bar
    @bar = @foo.bars.find(params[:id])
  end

  def bar_params
    params.require(:bar).permit(:name, :description)
  end
end
