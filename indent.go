// Overwrites the given file, replacing every multiple of two spaces at the start of each line with tab characters.
//
// Usage:
// $ indent path/to/file.txt
package main

import (
	"os"
	"io"
	"bufio"
	"log"
	"strings"
)

func main() {
	log := log.New(os.Stderr, "", 0)

	if len(os.Args) != 2 {
		log.Fatalf("Got %d arguments instead of expected 1: a file path.", len(os.Args) - 1)
	}

	file, err := os.OpenFile(os.Args[1], os.O_RDWR, 0755)
	if err != nil {
		log.Fatalf("Failed to open file '%s': %s\n", os.Args[1], err)
	}
	defer file.Close()

	var output strings.Builder

	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		text := scanner.Text()
		spaceCount := 0
		for spaceCount<len(text) && text[spaceCount] == ' ' {
			spaceCount++
		}
		if spaceCount > 0 && spaceCount % 2 == 0 {
			for i:=0; i<spaceCount/2; i++ {
				output.WriteString("\t")
			}
		}
		output.WriteString(text[spaceCount:])
		output.WriteString("\n")
	}

	if scanner.Err() != nil {
		log.Fatalf("Error while reading lines from file '%s': %s\n", os.Args[1], scanner.Err())
	}

	_, err = file.Seek(0, io.SeekStart)
	if (err != nil) {
		log.Fatalf("Error while seeking to start of file '%s': %s\n", os.Args[1], err)
	}

	_, err = file.Write([]byte(output.String()))
	if (err != nil) {
		log.Fatalf("Error while writing to file '%s': %s\n", os.Args[1], err)
	}

	err = file.Truncate(int64(len(output.String())))
	if (err != nil) {
		log.Fatalf("Error while truncating file '%s': %s\n", os.Args[1], err)
	}
}
