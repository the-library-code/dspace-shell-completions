all: dspace.bash dspace.zsh dspace.fish

dspace.bash: dspace.usage
	complgen --bash $@ $<
dspace.zsh: dspace.usage
	complgen --zsh $@ $<
dspace.fish: dspace.usage
	complgen --fish $@ $<
