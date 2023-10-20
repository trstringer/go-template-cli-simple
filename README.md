# Simple CLI Go template

Quickly create the boilerplate for a simple Go CLI.

## Usage

This requires `gonew`:

```bash
go install golang.org/x/tools/cmd/gonew@latest
```

Create your CLI:

```
gonew github.com/trstringer/go-template-cli-simple your-domain.com/your-project
```

The new project/module is created in the project directory:

```
cd ./your-project
```

Run setup:

```
make setup
```
