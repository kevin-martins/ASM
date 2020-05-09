# ASM
Some basic function

strlen: return the number of word counted. strlen(const char *s);

strcmp: check if two strings are the same. strcmp(const char *s1, const char *s2);

strchr: return a pointer to the first occurence of a string. strchr(const char *s, int c);

strncmp: compares s1 and s2 till a defined number of character. strncmp(const char *s1, const char *s2, size_t n);

strcasecmp: compares s1 and s2, ignoring the case of the characters. strcasecmp(const char *s1, const char *s2);

memmove: copies n bytes from memory area src to memory area dest, allow overlap. memmove(void *dest, const void *src, size_t n);

memcpy: copies n bytes from memory area src to memory area dest, don't allow overlap. memcpy(void *dest, const void *src, size_t n);

memset: fills the first n bytes of the memory area pointed to by s with the constant byte c. memset(void *s, int c, size_t n);
