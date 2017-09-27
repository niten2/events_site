class PagesDirectory < Middleman::Extension
  register :pages_directory
  option   :pages_dir, 'source/pages', 'Directory for site pages'

  def manipulate_resource_list(resources)
    pages_directory = File.join(app.root, options.pages_dir) << '/'
    pages = Dir[File.join(pages_directory, '**/*')]

    # Don't map directories
    pages.reject! { |path| File.directory? path }

    resources + pages.map do |source|
      pages = app.sitemap.extensionless_path source[pages_directory.length..-1]
      Middleman::Sitemap::Resource.new app.sitemap, pages, source
    end
  end

end
