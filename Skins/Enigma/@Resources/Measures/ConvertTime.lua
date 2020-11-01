function ConvertTime(n)

	return os.date('%I:%M %p', n)

end

function ConvertDay(n)

	return os.date('%A', n)

end