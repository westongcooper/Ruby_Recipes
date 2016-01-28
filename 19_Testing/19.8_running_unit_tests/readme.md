####This was a simple section that shows how to use the command line to include argruments
```$ ruby test/person_test.rb --verbose --name test_first_name```

or with regex
```$ ruby test/person_test.rb --verbose --name '/test_f/'```

You can also load Test::Unit framework alone and test in directories and subdirectories
```ruby -rtest/unit -e0 --  --pattern '/_test/'```
```ruby -rtest/unit -e0 --  --help```