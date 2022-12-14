# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `kramdown-parser-gfm` gem.
# Please instead update this file by running `bin/tapioca gem kramdown-parser-gfm`.

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm/options.rb:10
module Kramdown
  class << self
    # Return the data directory for kramdown.
    #
    # source://kramdown-2.4.0/lib/kramdown/document.rb:49
    def data_dir; end
  end
end

# This module defines all options that are used by parsers and/or converters as well as providing
# methods to deal with the options.
#
# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm/options.rb:11
module Kramdown::Options
  class << self
    # Return a Hash with the default values for all options.
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:72
    def defaults; end

    # Define a new option called +name+ (a Symbol) with the given +type+ (String, Integer, Float,
    # Symbol, Boolean, Object), default value +default+ and the description +desc+. If a block is
    # specified, it should validate the value and either raise an error or return a valid value.
    #
    # The type 'Object' should only be used for complex types for which none of the other types
    # suffices. A block needs to be specified when using type 'Object' and it has to cope with
    # a value given as string and as the opaque type.
    #
    # @raise [ArgumentError]
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:51
    def define(name, type, default, desc, &block); end

    # Return +true+ if an option called +name+ is defined.
    #
    # @return [Boolean]
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:67
    def defined?(name); end

    # Return all option definitions.
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:62
    def definitions; end

    # Merge the #defaults Hash with the *parsed* options from the given Hash, i.e. only valid option
    # names are considered and their value is run through the #parse method.
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:82
    def merge(hash); end

    # Parse the given value +data+ as if it was a value for the option +name+ and return the parsed
    # value with the correct type.
    #
    # If +data+ already has the correct type, it is just returned. Otherwise it is converted to a
    # String and then to the correct type.
    #
    # @raise [ArgumentError]
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:96
    def parse(name, data); end

    # Ensures that the option value +val+ for the option called +name+ is a valid array. The
    # parameter +val+ can be
    #
    # - a comma separated string which is split into an array of values
    # - or an array.
    #
    # Optionally, the array is checked for the correct size.
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:141
    def simple_array_validator(val, name, size = T.unsafe(nil)); end

    # Ensures that the option value +val+ for the option called +name+ is a valid hash. The
    # parameter +val+ can be
    #
    # - a hash in YAML format
    # - or a Ruby Hash object.
    #
    # @raise [Kramdown::Error]
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:158
    def simple_hash_validator(val, name); end

    # Converts the given String +data+ into a Symbol or +nil+ with the
    # following provisions:
    #
    # - A leading colon is stripped from the string.
    # - An empty value or a value equal to "nil" results in +nil+.
    #
    # source://kramdown-2.4.0/lib/kramdown/options.rb:122
    def str_to_sym(data); end
  end
end

# Allowed option types.
#
# source://kramdown-2.4.0/lib/kramdown/options.rb:39
Kramdown::Options::ALLOWED_TYPES = T.let(T.unsafe(nil), Array)

# This module contains all available parsers. A parser takes an input string and converts the
# string to an element tree.
#
# New parsers should be derived from the Base class which provides common functionality - see its
# API documentation for how to create a custom converter class.
#
# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:16
module Kramdown::Parser; end

# This class provides a parser implementation for the GFM dialect of Markdown.
#
# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:19
class Kramdown::Parser::GFM < ::Kramdown::Parser::Kramdown
  # @return [GFM] a new instance of GFM
  #
  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:25
  def initialize(source, options); end

  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:108
  def generate_gfm_header_id(text); end

  # Returns the value of attribute paragraph_end.
  #
  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:23
  def paragraph_end; end

  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:55
  def parse; end

  # Copied from kramdown/parser/kramdown/header.rb, removed the first line
  #
  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:125
  def parse_atx_header_gfm_quirk; end

  # To handle task-lists we override the parse method for lists, converting matching text into
  # checkbox input elements where necessary (as well as applying classes to the ul/ol and li
  # elements).
  #
  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:163
  def parse_list; end

  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:142
  def parse_strikethrough_gfm; end

  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:60
  def update_elements(element); end

  # Update the raw text for automatic ID generation.
  #
  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:77
  def update_raw_text(item); end

  private

  # source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:200
  def update_text_type(element, child); end
end

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:120
Kramdown::Parser::GFM::ATX_HEADER_START = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:190
Kramdown::Parser::GFM::ESCAPED_CHARS_GFM = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:135
Kramdown::Parser::GFM::FENCED_CODEBLOCK_MATCH = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:134
Kramdown::Parser::GFM::FENCED_CODEBLOCK_START = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:158
Kramdown::Parser::GFM::LIST_TYPES = T.let(T.unsafe(nil), Array)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:106
Kramdown::Parser::GFM::NON_WORD_RE = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:193
Kramdown::Parser::GFM::PARAGRAPH_END_GFM = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:138
Kramdown::Parser::GFM::STRIKETHROUGH_DELIM = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:139
Kramdown::Parser::GFM::STRIKETHROUGH_MATCH = T.let(T.unsafe(nil), Regexp)

# source://kramdown-parser-gfm-1.1.0/lib/kramdown/parser/gfm.rb:21
Kramdown::Parser::GFM::VERSION = T.let(T.unsafe(nil), String)

# The kramdown version.
#
# source://kramdown-2.4.0/lib/kramdown/version.rb:13
Kramdown::VERSION = T.let(T.unsafe(nil), String)
