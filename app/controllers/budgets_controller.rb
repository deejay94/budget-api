# frozen_string_literal: true

class BudgetsController < OpenReadController
  before_action :set_budget, only: %i[update destroy]

  # GET /budgets
  # GET /budgets.json
  def index
    @budgets = Budget.all

    render json: @budgets
  end

  # GET /budgets/1
  # GET /budgets/1.json
  def show
    render json: Budget.find(params[:id])
  end

  # POST /budgets
  # POST /budgets.json
  def create
    @budget = current_user.budgets.build(budget_params)

    if @budget.save
      render json: @budget, status: :created
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /budgets/1
  # PATCH/PUT /budgets/1.json
  def update
    if @budget.update(budget_params)
      head :no_content
    else
      render json: @budget.errors, status: :unprocessable_entity
    end
  end

  # DELETE /budgets/1
  # DELETE /budgets/1.json
  def destroy
    @budget.destroy

    head :no_content
  end

  def set_budget
    @budget = current_user.budgets.find(params[:id])
  end

  def budget_params
    params.require(:budget).permit(:name, :goal)
  end

  private :set_budget, :budget_params
end
