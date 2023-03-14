# This is where your API resources live, that way you can
# define them as Ruby objects, which can be serialized during
# the compilation process

module Resources
  TEST_RESOURCE = {
    hello: "world"
  }

  TEST_REQUEST_BODY = {foo: [:bar, :baz], bat: {bam: 0, bad: 1}}
end