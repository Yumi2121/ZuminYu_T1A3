require_relative '../src/todo_item'
require_relative '../src/app'


describe TodoItem do
  it "should create a todo with name and priority" do
    todo_name = "shop tee"
    high_priority = false
    todo_item = TodoItem.new(todo_name, high_priority)
    todo_item.to_s
    expect(todo_item.todo_name).to eq(todo_name)
    expect(todo_item.high_priority).to eq(high_priority)
  end
end

describe App do
  describe '#add' do
    it "should add todo to array of to-do-list" do
      todo_name = "shop tee"
      high_priority = false
      list = App.new.add(todo_name, high_priority)
      expect(list.length).to be(1)
    end

    it "should create a todo with name and priority" do
      app = App.new
      app.add("shop tee", false)
      expect(app.to_do_list[0].todo_name).to eq("shop tee")
      expect(app.to_do_list[0].high_priority).to eq(false)
    end
  end

  describe '#delete' do
    it "should delete selected todo item" do
      app = App.new
      app.add("shop tee", false)
      app.add("see doctor", true)
      app.add("buy milk", true)
      app.delete(1)
      expect(app.to_do_list.length).to be(2)
    end

    it "the delete item is what user selected" do
      app = App.new
      app.add("shop tee", false)
      app.add("see doctor", true)
      app.add("buy milk", true)
      app.delete(1)
      expect(app.to_do_list.delete_at(0).todo_name).to eq("shop tee")
    end
  end

  describe '#search' do
    it "the selected search item/items should include the keyword that user given." do
      app = App.new
      app.add("shop tee", false)
      app.add("see doctor", true)
      search_list = app.search("doctor")
      expect(search_list[0].todo_name).to eq("see doctor")
    end
  end

  describe '#sort' do
    it "should put high-priority item before low-priority in the list " do
    app = App.new
    app.add("shop tee", false)
    app.add("see doctor", true)
    expect(app.sort[0].todo_name).to eq("see doctor")
    expect(app.sort[0].high_priority).to eq(true)
    end
  end

end