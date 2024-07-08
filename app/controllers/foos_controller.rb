class FoosController < ApplicationController
  before_action :set_foo, only: %i[ show edit update destroy ]

  def index
    @foos = Foo.all
  end

  def show
  end

  def new
    @foo = Foo.new
  end

  def edit
  end

  def create
    @foo = Foo.new(foo_params)

    if @foo.save
      redirect_to @foo, notice: 'Foo создан'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @foo.update(foo_params)
      redirect_to @foo, notice: 'Foo обновлен'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @foo.destroy
    redirect_to foos_url, notice: 'Foo удален'
  end

  private
  def set_foo
    @foo = Foo.find(params[:id])
  end

  def foo_params
    params.require(:foo).permit(:name, :description)
  end
end
