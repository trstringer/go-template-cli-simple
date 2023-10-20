package main

import (
	"fmt"
	"os"

	"github.com/urfave/cli/v2"
)

const (
	flagMessage     string = "message"
	flagExclamation string = "exclamation"
)

func exec(cCtx *cli.Context) error {
	output := cCtx.String(flagMessage)
	if cCtx.Bool(flagExclamation) {
		output = output + "!"
	}

	fmt.Println(output)
	return nil
}

func main() {
	app := &cli.App{
		Name:  "go-template-cli",
		Usage: "cli template boilerplate",
		Flags: []cli.Flag{
			&cli.StringFlag{
				Name:  flagMessage,
				Usage: "message to say",
				Value: "hello world",
			},
			&cli.BoolFlag{
				Name:  flagExclamation,
				Usage: "use exclamation",
			},
		},
		Action: exec,
	}

	if err := app.Run(os.Args); err != nil {
		fmt.Printf("Error running application: %v\n", err)
		os.Exit(1)
	}
}
