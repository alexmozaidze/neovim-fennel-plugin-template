<div align="center">

# NeoVim Fennel Plugin Template

</div>

A minimalist and practical NeoVim Fennel plugin template.

## Building

Single Makefile is used to build the plugin. It's easy to read if you know the basics of Make.

Here's how you build the plugin:
```
make
```

Simple, eh?

## Project structure

Code speaks clearer than a README.

I encourage you to clone this repo and do some experimenting. All files are written in a bare-bones manner, so you won't get distracted ;)

### `fnl/`

This is where you put all your Fennel code. When you run `make`, it compiles everything into `lua/` directory.

### `macros/`

This is where all your frequently used macros go.

### `colors/`

Fennel is not supported in `colors/`, simply because you only put loading code there.

```lua
-- colors/my-colorscheme.lua
require "my-colorscheme".load()
```

## Tips

### Using third-party dependencies

Try to minimize the amount of dependencies you import yourself, because it's usually hard for Lua runtime to cache those dependencies consistently across multiple plugins.

### Utilizing builtin functions

Use `:help <Tab>` or `:Telescope help_tags` and search for any function you'd want to use. NeoVim has quite a number of functions you may want to use.

Look into `vim.tbl_` functions, they're very useful!
