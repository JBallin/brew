# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `spoom` gem.
# Please instead update this file by running `tapioca sync`.

# typed: true

module Spoom
end

module Spoom::Cli
end

module Spoom::Cli::Commands
end

class Spoom::Cli::Commands::Base < ::Thor
  def in_sorbet_project!; end
  def in_sorbet_project?; end
  def say_error(message, status = T.unsafe(nil)); end
end

class Spoom::Cli::Commands::Config < ::Spoom::Cli::Commands::Base
  def files; end
  def help(command = T.unsafe(nil), subcommand = T.unsafe(nil)); end
  def show; end
end

class Spoom::Cli::Commands::LSP < ::Spoom::Cli::Commands::Base
  def defs(file, line, col); end
  def find(query); end
  def help(command = T.unsafe(nil), subcommand = T.unsafe(nil)); end
  def hover(file, line, col); end
  def list; end
  def lsp_client; end
  def refs(file, line, col); end
  def run(&block); end
  def show; end
  def sigs(file, line, col); end
  def symbols(file); end
  def types(file, line, col); end
end

class Spoom::Cli::Commands::Run < ::Spoom::Cli::Commands::Base
  def colorize_code(code, colors = T.unsafe(nil)); end
  def colorize_message(message, colors = T.unsafe(nil)); end
  def help(command = T.unsafe(nil), subcommand = T.unsafe(nil)); end
  def metrics; end
  def tc; end
end

class Spoom::Cli::Main < ::Thor
  def config(*args); end
  def lsp(*args); end
  def tc(*args); end

  class << self
    def exit_on_failure?; end
  end
end

class Spoom::Cli::SymbolPrinter
  def initialize(default_indent, no_color = T.unsafe(nil)); end

  def dedent; end
  def indent; end
  def no_color; end
  def no_color=(_); end
  def print(string); end
  def printn; end
  def printt; end
  def seen; end
  def seen=(_); end
  def visit(object); end

  class << self
    def print_list(list, no_color); end
    def print_object(object, no_color); end
  end
end

module Spoom::Config
end

Spoom::Config::SORBET_CONFIG = T.let(T.unsafe(nil), String)

Spoom::Config::SORBET_GEM_PATH = T.let(T.unsafe(nil), String)

Spoom::Config::SORBET_PATH = T.let(T.unsafe(nil), String)

Spoom::Config::WORKSPACE_PATH = T.let(T.unsafe(nil), String)

class Spoom::Error < ::StandardError
end

module Spoom::LSP
end

class Spoom::LSP::Client
  def initialize(sorbet_cmd, *sorbet_args); end

  def close; end
  def definitions(uri, line, column); end
  def document_symbols(uri); end
  def hover(uri, line, column); end
  def next_id; end
  def open(workspace_path); end
  def read; end
  def read_raw; end
  def references(uri, line, column, include_decl = T.unsafe(nil)); end
  def send(message); end
  def send_raw(json_string); end
  def signatures(uri, line, column); end
  def symbols(query); end
  def type_definitions(uri, line, column); end
end

class Spoom::LSP::Diagnostic < ::T::Struct
  const :range, Spoom::LSP::Range
  const :code, Integer
  const :message, String
  const :informations, Object

  def to_s; end

  class << self
    def from_json(json); end
    def inherited(s); end
  end
end

class Spoom::LSP::DocumentSymbol < ::T::Struct
  const :name, String
  const :detail, T.nilable(String)
  const :kind, Integer
  const :location, T.nilable(Spoom::LSP::Location)
  const :range, T.nilable(Spoom::LSP::Range)
  const :children, T::Array[Spoom::LSP::DocumentSymbol]

  def accept_printer(printer); end
  def kind_string; end
  def to_s; end

  class << self
    def from_json(json); end
    def inherited(s); end
  end
end

Spoom::LSP::DocumentSymbol::SYMBOL_KINDS = T.let(T.unsafe(nil), Hash)

class Spoom::LSP::Error < ::StandardError
end

class Spoom::LSP::Error::AlreadyOpen < ::Spoom::LSP::Error
end

class Spoom::LSP::Error::BadHeaders < ::Spoom::LSP::Error
end

class Spoom::LSP::Error::Diagnostics < ::Spoom::LSP::Error
  def initialize(uri, diagnostics); end

  def diagnostics; end
  def uri; end

  class << self
    def from_json(json); end
  end
end

class Spoom::LSP::Hover < ::T::Struct
  const :contents, String
  const :range, T.nilable(T::Range[T.untyped])

  def accept_printer(printer); end
  def to_s; end

  class << self
    def from_json(json); end
    def inherited(s); end
  end
end

class Spoom::LSP::Location < ::T::Struct
  const :uri, String
  const :range, Spoom::LSP::Range

  def accept_printer(printer); end
  def to_s; end

  class << self
    def from_json(json); end
    def inherited(s); end
  end
end

class Spoom::LSP::Message
  def initialize; end

  def as_json; end
  def jsonrpc; end
  def to_json(*args); end
end

class Spoom::LSP::Notification < ::Spoom::LSP::Message
  def initialize(method, params); end

  def method; end
  def params; end
end

class Spoom::LSP::Position < ::T::Struct
  const :line, Integer
  const :char, Integer

  def accept_printer(printer); end
  def to_s; end

  class << self
    def from_json(json); end
    def inherited(s); end
  end
end

class Spoom::LSP::Range < ::T::Struct
  const :start, Spoom::LSP::Position
  const :end, Spoom::LSP::Position

  def accept_printer(printer); end
  def to_s; end

  class << self
    def from_json(json); end
    def inherited(s); end
  end
end

class Spoom::LSP::Request < ::Spoom::LSP::Message
  def initialize(id, method, params); end

  def id; end
  def method; end
  def params; end
end

class Spoom::LSP::ResponseError < ::Spoom::LSP::Error
  def initialize(code, message, data); end

  def code; end
  def data; end
  def message; end

  class << self
    def from_json(json); end
  end
end

class Spoom::LSP::SignatureHelp < ::T::Struct
  const :label, T.nilable(String)
  const :doc, Object
  const :params, T::Array[T.untyped]

  def accept_printer(printer); end
  def to_s; end

  class << self
    def from_json(json); end
    def inherited(s); end
  end
end

module Spoom::Sorbet
  class << self
    sig { params(path: String, capture_err: T::Boolean, arg: String).returns([String, T::Boolean]) }
    def srb(*arg, path: T.unsafe(nil), capture_err: T.unsafe(nil)); end
    sig { params(config: Spoom::Sorbet::Config, path: String).returns(T::Array[String]) }
    def srb_files(config, path: T.unsafe(nil)); end
    sig { params(path: String, capture_err: T::Boolean, arg: String).returns(T.nilable(Spoom::Sorbet::Metrics)) }
    def srb_metrics(*arg, path: T.unsafe(nil), capture_err: T.unsafe(nil)); end
    sig { params(path: String, capture_err: T::Boolean, arg: String).returns([String, T::Boolean]) }
    def srb_tc(*arg, path: T.unsafe(nil), capture_err: T.unsafe(nil)); end
    sig { params(path: String, capture_err: T::Boolean, arg: String).returns(T.nilable(String)) }
    def srb_version(*arg, path: T.unsafe(nil), capture_err: T.unsafe(nil)); end
  end
end

class Spoom::Sorbet::Config
  sig { void }
  def initialize; end

  def allowed_extensions; end
  def ignore; end
  sig { returns(T::Array[String]) }
  def paths; end

  class << self
    sig { params(sorbet_config_path: String).returns(Spoom::Sorbet::Config) }
    def parse_file(sorbet_config_path); end
    sig { params(sorbet_config: String).returns(Spoom::Sorbet::Config) }
    def parse_string(sorbet_config); end

    private

    sig { params(line: String).returns(String) }
    def parse_option(line); end
  end
end

module Spoom::Sorbet::Errors
end

class Spoom::Sorbet::Errors::Error
  include(::Comparable)

  sig { params(file: T.nilable(String), line: T.nilable(Integer), message: T.nilable(String), code: T.nilable(Integer), more: T::Array[String]).void }
  def initialize(file, line, message, code, more = T.unsafe(nil)); end

  sig { params(other: T.untyped).returns(Integer) }
  def <=>(other); end
  def code; end
  sig { returns(T.nilable(String)) }
  def file; end
  sig { returns(T.nilable(Integer)) }
  def line; end
  def message; end
  sig { returns(T::Array[String]) }
  def more; end
  sig { returns(String) }
  def to_s; end

  class << self
    sig { params(line: String).returns(Spoom::Sorbet::Errors::Error) }
    def from_error_line(line); end
  end
end

class Spoom::Sorbet::Errors::Parser
  sig { void }
  def initialize; end

  sig { params(output: String).returns(T::Array[Spoom::Sorbet::Errors::Error]) }
  def parse(output); end

  private

  sig { params(line: String).void }
  def append_error(line); end
  sig { void }
  def close_error; end
  sig { params(line: String).returns(T.nilable(Integer)) }
  def leading_spaces(line); end
  sig { params(line: String).void }
  def open_error(line); end

  class << self
    sig { params(output: String).returns(T::Array[Spoom::Sorbet::Errors::Error]) }
    def parse_string(output); end
  end
end

Spoom::Sorbet::Errors::Parser::HEADER = T.let(T.unsafe(nil), Array)

class Spoom::Sorbet::Metrics < ::T::Struct
  const :repo, String
  const :sha, String
  const :status, String
  const :branch, String
  const :timestamp, Integer
  const :uuid, String
  const :metrics, T::Hash[String, T.nilable(Integer)]

  sig { params(key: String).returns(T.nilable(Integer)) }
  def [](key); end
  sig { returns(T::Hash[String, T.nilable(Integer)]) }
  def files_by_strictness; end
  sig { returns(Integer) }
  def files_count; end
  sig { params(out: T.any(IO, StringIO)).void }
  def show(out = T.unsafe(nil)); end
  sig { returns(String) }
  def to_s; end

  private

  sig { params(value: T.nilable(Integer), total: T.nilable(Integer)).returns(String) }
  def percent(value, total); end

  class << self
    def inherited(s); end
    sig { params(path: String, prefix: String).returns(Spoom::Sorbet::Metrics) }
    def parse_file(path, prefix = T.unsafe(nil)); end
    sig { params(obj: T::Hash[String, T.untyped], prefix: String).returns(Spoom::Sorbet::Metrics) }
    def parse_hash(obj, prefix = T.unsafe(nil)); end
    sig { params(string: String, prefix: String).returns(Spoom::Sorbet::Metrics) }
    def parse_string(string, prefix = T.unsafe(nil)); end
  end
end

Spoom::Sorbet::Metrics::DEFAULT_PREFIX = T.let(T.unsafe(nil), String)

Spoom::Sorbet::Metrics::SIGILS = T.let(T.unsafe(nil), Array)

Spoom::VERSION = T.let(T.unsafe(nil), String)

class String
  include(::Comparable)
  include(::Colorize::InstanceMethods)
  include(::JSON::Ext::Generator::GeneratorMethods::String)
  extend(::Colorize::ClassMethods)
  extend(::JSON::Ext::Generator::GeneratorMethods::String::Extend)

  def from_uri; end
  def to_uri; end
end
