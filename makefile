latest:
	cp ~/.zshrc .
	cp ~/.config/nvim/init.vim .
	cp ~/.vimrc .

update:
	cp .zshrc ~
	mkdir -p ~/.config/nvim/ && cp init.vim ~/.config/nvim/
	cp .vimrc ~