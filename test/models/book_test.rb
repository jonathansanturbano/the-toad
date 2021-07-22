require 'test_helper'

class BookTest < ActiveSupport::TestCase
  test "book valid if title attribute is present" do
    book = Book.new(title: "The Tempest")
    book.valid?
    assert book.errors[:title].empty?
  end

  test "book invalid if title attribute is not present" do
    book = Book.new(title: "")
    book.valid?
    assert_not book.errors[:title].empty?
  end

  test "book valid if description attribute is present" do
    book = Book.new(description: "Shakespear's greatest work")
    book.valid?
    assert book.errors[:description].empty?
  end

  test "book invalid if description attribute is not present" do
    book = Book.new(description: "")
    book.valid?
    assert_not book.errors[:description].empty?
  end

  test "book valid if color attribute is present" do
    book = Book.new(color: "red")
    book.valid?
    assert book.errors[:color].empty?
  end

  test "book invalid if color attribute is not present" do
    book = Book.new(color: "")
    book.valid?
    assert_not book.errors[:color].empty?
  end

  test "book valid if age attribute is present" do
    book = Book.new(age: "5+")
    book.valid?
    assert book.errors[:age].empty?
  end

  test "book invalid if age attribute is not present" do
    book = Book.new(age: "")
    book.valid?
    assert_not book.errors[:age].empty?
  end

  test "book valid if material attribute is present" do
    book = Book.new(material: "paper")
    book.valid?
    assert book.errors[:material].empty?
  end

  test "book invalid if material attribute is not present" do
    book = Book.new(material: "")
    book.valid?
    assert_not book.errors[:material].empty?
  end

  test "book valid if pages attribute is present" do
    book = Book.new(pages: "42")
    book.valid?
    assert book.errors[:pages].empty?
  end

  test "book invalid if pages attribute is a negative number" do
    book = Book.new(pages: -1)
    book.valid?
    assert_not book.errors[:pages].empty?
  end

  test "book invalid if pages attribute is not a number" do
    book = Book.new(pages: "notanumber")
    book.valid?
    assert_not book.errors[:pages].empty?
  end

  test "book invalid if pages attribute is not present" do
    book = Book.new(pages: "")
    book.valid?
    assert_not book.errors[:pages].empty?
  end

  test "book valid if year attribute is present" do
    book = Book.new(year: "42")
    book.valid?
    assert book.errors[:year].empty?
  end

  test "book invalid if year attribute is a negative number" do
    book = Book.new(year: -1)
    book.valid?
    assert_not book.errors[:year].empty?
  end

  test "book invalid if year attribute is not a number" do
    book = Book.new(year: "notanumber")
    book.valid?
    assert_not book.errors[:year].empty?
  end

  test "book invalid if year attribute is not present" do
    book = Book.new(year: "")
    book.valid?
    assert_not book.errors[:year].empty?
  end

  test "book valid if price attribute is present" do
    book = Book.new(price: "42")
    book.valid?
    assert book.errors[:price].empty?
  end

  test "book invalid if price attribute is a negative number" do
    book = Book.new(price: -1)
    book.valid?
    assert_not book.errors[:price].empty?
  end

  test "book invalid if price attribute is not a number" do
    book = Book.new(price: "notanumber")
    book.valid?
    assert_not book.errors[:price].empty?
  end

  test "book invalid if price attribute is not present" do
    book = Book.new(price: "")
    book.valid?
    assert_not book.errors[:price].empty?
  end

  test "book valid if size attribute is present" do
    book = Book.new(size: "15 x 20 x 10")
    book.valid?
    assert book.errors[:size].empty?
  end

  test "book invalid if size attribute is not present" do
    book = Book.new(size: "")
    book.valid?
    assert_not book.errors[:size].empty?
  end

  test "book valid if signature fee is present" do
    book = Book.new(signature_fee: 3)
    book.valid?
    assert book.errors[:signature_fee].empty?
  end

  test "book invalid if signature fee is not present" do
    book = Book.new(signature_fee: 3)
    book.valid?
    assert_not book.errors[:signature_fee].empty?
  end
end
