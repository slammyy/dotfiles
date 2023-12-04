# What is dotfiles?
User-specific application configuration is traditionally stored in so called
dotfiles (files whose filename starts with a dot).
It is common practice to track dotfiles with a version control system such 
as Git to keep track of changes and synchronize dotfiles across various hosts.
There are various approaches to managing dotfiles 
(e.g. directly tracking dotfiles in the home directory v.s.
storing them in a subdirectory and symlinking/copying/generating files with a
shell script or a dedicated tool).
