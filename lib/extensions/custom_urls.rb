class CustomUrls < Middleman::Extension

  register:custom_urls

  def manipulate_resource_list(resources)
    index_file = app.index_file
    new_index_path = "/#{index_file}"

    resources.each do |resource|

      if resource.raw_data[:custom_url]
        resource.destination_path = resource.raw_data[:custom_url] + new_index_path
      end
    end
  end

end
