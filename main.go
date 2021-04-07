package main

import (
	"log"
	"time"
)

var BuildTime string

func main() {
	for {
		log.Printf("Simple App build time:\t%s", BuildTime)
		time.Sleep(2 * time.Second)
	}
}
