#include "libasm.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

int	main(void)
{
	//const char		*str = "Hello, World!!!!!!!!!!";
	//const size_t	len = ft_strlen(str);

	//printf("string: %s, lenght: %lu\n\n", str, len);
	//printf("----------\n\n");

	//const char		*source = str;
	//const size_t	source_len = len + 1;
	//char			buffer[source_len];

	//ft_strcpy(buffer, source);
	//printf("source: %s, destination: %s\n\n", source, buffer);
	//printf("----------\n\n");

	//const char		*str1 = "joelA";
	//const char		*str2 = "joel";

	//printf("%s == %s: %d\n\n", str1, str2, ft_strcmp(str1, str2));
	//printf("----------\n\n");

	//const int		fd_write = 1;
	//const char		*buf_write = "123452424fjo3fj";
	//const size_t	count_write = ft_strlen(buf_write);

	//ssize_t	temp1 = ft_write(fd_write, buf_write, count_write);
	//printf("\nerrno: %d\n", errno);
	//printf("bytes written: %ld\n\n", temp1);

	//ssize_t	temp2 = write(fd_write, buf_write, count_write);
	//printf("\nerrno: %d\n", errno);
	//printf("byte written: %ld\n\n", temp2);
	//printf("----------\n\n");

	//const int		fd_read = 0;
	//char			buf_read[10];
	//const size_t	count_read = sizeof(buf_read);

	//ssize_t	temp3 = ft_read(fd_read, buf_read, count_read);
	//printf("errno: %d\n", errno);
	//if (temp3 > 0)
	//	printf("Readed: %.*s\n", (int)temp3, buf_read);
	//printf("bytes read: %ld\n\n", temp3);

	//ssize_t	temp4 = read(fd_read, buf_read, count_read);
	//printf("errno: %d\n", errno);
	//if (temp4 > 0)
	//	printf("Readed: %.*s\n", (int)temp4, buf_read);
	//printf("bytes read: %ld\n\n", temp4);
	//printf("----------\n\n");

	//errno = 0;
	//const char	*original = "Try duplicate this";
	//char	*new = ft_strdup(original);

	//printf("errno: %d\n", errno);
	//printf("original: %s\tnew: %s\n\n", original, new);
	//free(new);
	//printf("----------\n\n");
	
	char	*ascii_number = "2a";
	char	*base = "0123456789abcdef";

	printf("Number %s in base %s = %d\n", ascii_number, base,
		ft_atoi_base(ascii_number, base));
	
	return (0);
}
