# Компиляция игры Виселица

.PHONY:	all clean run

all:	viselitsa

viselitsa:	compiled_index.html style.css app.js game.js
	@echo "Компиляция игры Виселица завершена"

compiled_index.html:	index.html
	cp index.html compiled_index.html

style.css:	css/style.css
	cp css/style.css style.css

app.js:	js/app.js
	cp js/app.js app.js

game.js:	js/game.js
	cp js/game.js game.js

clean:
	rm -f compiled_index.html style.css app.js game.js

run:	viselitsa
	python3 -m http.server
