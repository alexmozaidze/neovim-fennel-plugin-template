<div align="center">

# NeoVim Fennel Plugin Template


A minimalist and practical NeoVim Fennel plugin template.

</div>

## Building

> [!NOTE]\
> The Makefile and scripts use POSIX commands. Windows support is not planned, though, I am open to contributions.

Single Makefile is used to build the plugin. It's easy to read if you know the basics of Make.

Here's how you build the plugin:
```sh
make

# or

make clean build
```

## Project structure

### `fnl/`

This is where you put all your Fennel code. When you run `make`, it compiles everything into `lua/` directory.

### `macros/`

All your macro files go into this folder.

### `scripts/`

All the wonderful scripts you'd like to reuse.

### `deps/`

Project dependencies. This is mainly reserved for the fennel executable and nothing else, but you may repurpose it.

## Unsupported

`colors/` and `after/` directories are used very rarely, and, thus, are not supported.

You only put loading code in `colors/` and I've never in my life touched `after/`.

## Tips

### Utilizing built-in functions

Use `:help` or `:Telescope help_tags` to search for any function you'd want to use. NeoVim has quite a number of functions you may want to use.

Look into `vim.tbl_*` functions and `vim.iter` (NeoVim >=0.10), they're pretty useful!

#### Examples

<details><summary>Merging user config with default config</summary>

```fnl
(local config {:some_setting 42})

(lambda setup [?user-config]
  (let [user-config (or ?user-config {})]
    (set M.config (vim.tbl_extend :force M.config user-config))))
```

</details>

<details><summary>Checking if at least one buffer is modified</summary>

```fnl
(let [buffers (vim.api.nvim_list_bufs)
      buffers-iter (vim.iter buffers)
      any-buffer-modified? (buffers-iter:any #(vim.api.nvim_get_option_value :modified {:buf $2}))]
  (if any-buffer-modified?
      (print "At least one buffer is modified!")
      (print "No buffers are modified.")))
```

</details>

### Third-party dependencies

Try to minimize the amount of dependencies you import yourself, because it's usually hard for Lua runtime to cache those dependencies consistently across multiple plugins.

I don't provide any support for libraries in this template, but you can easily modify the Makefile to your liking.
