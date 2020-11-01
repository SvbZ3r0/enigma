function WindDirParse(data)

	for w in string.gmatch(data, "%d+") do
		return w
	end

end

function HumidityParse(data)

	for w in string.gmatch(data, "%d+") do
		return w
	end

end
