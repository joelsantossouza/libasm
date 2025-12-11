#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>

int	main(void)
{
	const char		*str = "Hello, World!!!!!!!!!!";
	const size_t	len = ft_strlen(str);

	printf("string: %s, lenght: %lu\n\n", str, len);

	const char		*source = str;
	const size_t	source_len = len + 1;
	char			buffer[source_len];

	ft_strcpy(buffer, source);
	printf("source: %s, destination: %s\n\n", source, buffer);
	return (0);
}
