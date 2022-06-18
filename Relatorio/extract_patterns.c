//
// extract_patterns.c
//
// Tomás Oliveira e Silva,  August 2002
//
// extract all hyphenation patterns from a file (useful to compare hyphenation files)
//
// File put in the public domain (with no warranty whatsoever)
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int compare(const void *p1,const void *p2)
{
  return strcmp(*(const char **)p1,*(const char **)p2);
}

int main(int argc,char **argv)
{
  char *p,line[4096],tmp[64],*patterns[1000];
  int i,j,k,s,n;
  FILE *fp;

  if(argc > 1)
  {
    fp = fopen(argv[1],"r");
    if(fp == NULL)
    {
      fprintf(stderr,"Unable to open %s\n",argv[1]);
      return 1;
    }
  }
  else
    fp = stdin;
  n = s = 0;
  while(fgets(line,sizeof(line),fp) != NULL)
  {
    i = j = 0;
    while(line[i] && line[i] != '%')
      if(line[i] == '^' && line[i + 1] == '^')
      {
        if(line[i + 2] >= '0' && line[i + 2] <= '9')
          k = line[i + 2] - '0';
        else if(line[i + 2] >= 'A' && line[i + 2] <= 'F')
          k = line[i + 2] - 'A' + 10;
        else if(line[i + 2] >= 'a' && line[i + 2] <= 'f')
          k = line[i + 2] - 'a' + 10;
        else
        {
          fprintf(stderr,"bad hexadecimal digit\n");
          return 1;
        }
        k <<= 4;
        if(line[i + 3] >= '0' && line[i + 3] <= '9')
          k += line[i + 3] - '0';
        else if(line[i + 3] >= 'A' && line[i + 3] <= 'F')
          k += line[i + 3] - 'A' + 10;
        else if(line[i + 3] >= 'a' && line[i + 3] <= 'f')
          k += line[i + 3] - 'a' + 10;
        else
        {
          fprintf(stderr,"bad hexadecimal digit\n");
          return 1;
        }
fprintf(stderr,"%c%c %u\n",line[i + 2],line[i + 3],k);
        line[j++] = k;
        i += 4;
      }
      else
        line[j++] = line[i++];
    line[j] = 0;
    i = 0;
    if(s == 0)
    {
      p = strstr(line,"\\patterns");
      if(p != NULL)
      {
        i = p - line + 9;
        s = 1;
      }
    }
    if(s == 1)
    {
      while(line[i] && line[i] != '{')
        i++;
      if(line[i] == '{')
      {
        i++;
        s = 2;
      }
    }
    while(s == 2 && line[i])
      if(line[i] == ' ' || line[i] == '\t' || line[i] == '\r' || line[i] == '\n')
        i++;
      else if(line[i] == '}')
        s = 3;
      else
      {
        j = 0;
        while(line[i] && line[i] != ' ' && line[i] != '\t' && line[i] != '\r' && line[i] != '\n')
        {
          if(j >= sizeof(tmp) - 1)
          {
            fprintf(stderr,"pattern too large\n");
            return 1;
          }
          tmp[j++] = line[i++];
        }
        tmp[j] = 0;
        if(n >= sizeof(patterns) / sizeof(patterns[0]))
        {
          fprintf(stderr,"too many patterns\n");
          return 1;
        }
        patterns[n++] = strdup(tmp);
      }
  }
  if(argc > 1)
    fclose(fp);
  if(n > 0)
    qsort(patterns,n,sizeof(patterns[0]),compare);
  for(i = 0;i < n;i++)
    printf("%s\n",patterns[i]);
  return 0;
}
