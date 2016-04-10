# Usage:
#         in config.rb
#           activate :custom_urls
#         in frontmatter
#           custom_url: 'foo/bar'

class CustomUrls < Middleman::Extension

  register:custom_urls

  # Update the main sitemap resource list
  # @return [void]
  def manipulate_resource_list(resources)

    index_file = app.index_file
    new_index_path = "/#{index_file}"

    # for each resource
    resources.each do |resource|

      # has custom_url in frontmatter
      if resource.raw_data[:custom_url]

        # set path as custom_url
        resource.destination_path = resource.raw_data[:custom_url] + new_index_path
      end
    end
  end
end
