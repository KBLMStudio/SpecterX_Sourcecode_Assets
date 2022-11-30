if text_string_array != array_length(text_string) -1 {
	text_string_array += 1
	text_index = 1
}
else {
	instance_destroy(self)
}
