require 'rails_helper'

describe Task::BoardController, type: :controller do
  describe "#new" do
    context "success" do
      before { get :new }
      it { expect(response).to render_template "new" }
    end
  end

  describe "#create" do
    context "success" do
      let(:params) { attributes_for(:task_board) }
      before { post :create, params: { task_board: params } }

      it { expect(response).to redirect_to board_path assigns[:board].id }
    end

    context "failure" do
    end
  end

  describe "#show" do
    context "success" do
      let(:board) { create(:task_board) }
      
      before { get :show, params:{id: board.id} }
      it :aggrigate_failure do
        expect(response).to render_template "show"
        expect(assigns(:board).name).to eq board.name
      end
    end
  end
end
