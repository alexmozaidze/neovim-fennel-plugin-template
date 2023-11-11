(import-macros {: the-answer-to-life} :utils)

(local M {})

(lambda M.setup []
  (vim.notify "Ayo, my plugin is loaded!")
  (the-answer-to-life))

M
