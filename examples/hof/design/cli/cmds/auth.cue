package cmds

import (
	"github.com/hofstadter-io/hofmod-cli/schema"
)

#AuthCommand: schema.#Command & {
	TBD:   "Ø"
	Name:  "auth"
	Usage: "auth"
	Short: "authentication subcommands"
	Long:  Short

	OmitRun: true

	Commands: [{
		TBD:   "Ø"
		Name:  "login"
		Usage: "login <where>"
		Short: "login to an account, provider, system, or url"
		Long:  Short
		Args: [
			{
				Name: "where"
				Type: "string"
				Help: "the account, provider, system, or url you wish to authenticate with"
			},
		]
	}, {
		TBD:   "Ø"
		Name:  "logout"
		Usage: "logout <name>"
		Short: "logout of an authenticated session"
		Long:  Short
	}, {
		TBD:   "Ø"
		Name:  "list"
		Usage: "list"
		Short: "list known auth configurations and sessions"
		Long:  Short
	}, {
		TBD:   "Ø"
		Name:  "test"
		Usage: "test [name]"
		Short: "test your auth configuration, defaults to current context"
		Long:  Short
	}]
}
