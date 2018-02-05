class FranchisersController < ApplicationController
  layout 'admin'
  def index
    list
    render('list')
  end

  def list
    @franchisers = Franchiser.order('contact_name ASC')
  end

  def new
    @franchiser = Franchiser.new()
  end

  def create
    @franchiser = Franchiser.new()
    if @franchiser.save
      flash[:notice] = 'franchiser Created'
      redirect_to(:action => 'list')
    else
      render('new')
    end

  end

  def show

  end

end
