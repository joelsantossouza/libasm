#include "libasm.h"
#include <stdio.h>

int	main(void)
{
	const char	*str = "Hello, World";

	printf("string: %s, lenght: %ld\n", str, ft_strlen(str));
	return (0);
}
