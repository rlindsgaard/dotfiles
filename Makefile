.default: all
 
.phony: all install
 
all:
	@echo "Use \"make install\" ..."
 
install:
	@echo "Installing into $(HOME) ..."
	@mv -f $(HOME)/.bashrc $(HOME)/.bashrc_backup 2>&1 || true
	@mv -f $(HOME)/.Xresources $(HOME)/.Xresources_backup 2>&1 || true
	@install bashrc $(HOME)/.bashrc
	@install Xresources $(HOME)/.Xresources
