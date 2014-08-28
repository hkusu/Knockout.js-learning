class TestViewModel
  constructor: (first, last) ->
    @firstName = ko.observable(first)
    @lastName =  ko.observable(last)
    @fullName = ko.computed =>
      @lastName() + " " + @firstName()

$ ->
  ko.applyBindings(new TestViewModel("太郎", "山田"))
