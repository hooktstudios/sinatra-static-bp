require 'erb'

class Boilerplate
  def self.create(args)
    project_name = args[0]
    project_path = File.join(Dir.pwd, project_name)
    lib_root = File.dirname(__FILE__)

    if File.exists?(project_path)
      puts "Folder \"#{project_name}\" already exist."
      return
    end

    # Copy skeleton
    FileUtils.mkdir project_path
    FileUtils.cp_r File.join(lib_root, 'skeleton', '.'), project_path

    # Evaluate ERB templates
    Dir.glob(File.join(project_path, '**/*.erb')).each do |template|
      erb = ERB.new(File.new(template).read)
      out = File.new(template.gsub(/\.erb$/, ''), 'w')
      out.puts erb.result(binding)
      out.close
      FileUtils.rm template
    end
  end
end