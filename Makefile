DIR=~/dotfiles
OLDDIR=~/dotfiles_old
FILES=.vim .vimrc .bashrc .bash_aliases

all: $(FILES)
	mkdir -p $(OLDDIR)
	# change to the dotfiles directory
	cd $(DIR)
	# Create symlinks from the homedir to any files in the ~/dotfiles directory specified in $(FILES)
	for file in $(FILES); do \
		mv ~/$$file $(OLDDIR); \
		ln -fs $(DIR)/$$file ~/$$file; \
	done;

clean:
	for file in $(OLDDIR)/*; do \
		rm ~/$$file; \
		mv $(OLDDIR)/$$file ~; \
	done;
