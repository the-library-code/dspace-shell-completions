all: dspace.bash dspace.zsh dspace.fish

dspace.bash: dspace.usage
	complgen aot --bash-script $@ $<
dspace.zsh: dspace.usage
	complgen aot --zsh-script $@ $<
dspace.fish: dspace.usage
	complgen aot --fish-script $@ $<
