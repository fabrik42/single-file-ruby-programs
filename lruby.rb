BEGIN {
  require 'stringio'
  $stdout = StringIO.new
}

END {
  output = $stdout.string

  end_marker = '__END__'
  code, data = File.read($0).split(end_marker)

  time = Time.now.strftime('%Y-%m-%dT%H:%M:%S%z')
  headline = "----- [#{time}] RESULTS -----"
  new_data = [data, headline, output].join("\n")
  File.write($0, [code, new_data].join("#{end_marker}"))
  STDOUT.puts output
}
