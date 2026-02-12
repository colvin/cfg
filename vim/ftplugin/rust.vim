setlocal ts=4 sw=4 sts=4 expandtab
let g:rustfmt_autosave = 1
let g:ale_linters = {'rust': ['analyzer', 'cargo']}
let g:ale_fixers = {'rust': ['rustfmt', 'remove_trailing_lines', 'trim_whitespace']}
let g:ale_rust_cargo_use_clippy = 1
