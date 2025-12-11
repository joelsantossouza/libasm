#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>

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

	const char		*str1 = "joelA";
	const char		*str2 = "joel";

	printf("%s == %s: %d\n\n", str1, str2, ft_strcmp(str1, str2));

	const int		fd = 1;
	const char		*buf = "123452424fjo3fj";
	const size_t	count = ft_strlen(buf);

	ssize_t	temp1 = ft_write(fd, buf, count);
	printf("errno: %d\n", errno);
	printf("%ld\n\n", temp1);

	ssize_t	temp2 = write(fd, buf, count);
	printf("errno: %d\n", errno);
	printf("%ld\n\n", temp2);
	return (0);
}
