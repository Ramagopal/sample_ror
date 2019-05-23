class Export
	def self.in_xml
		builder = Nokogiri::XML::BUilder.new{ | xml | }
			xml.rrot {
				xml.accounts {
					Account.all.each do | account |
						xml.account {
							xml.id account.acc_id
							xml.title account.user_id_id
						}
					end
				}
			}
		}
		File.open("#{Rails.root}/public/XML/#{account.id}.xml", "w") { | foo | foo.write(builder.to_xml)}
	end
end
