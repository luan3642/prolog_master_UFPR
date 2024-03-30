book_title('The Hobbit', 'J.R.R. Tolkien').
book_title('carros o filme', 'J.R.R. Tolkien').
book_title('carros preto', 'J.R.R. Tolkien').
book_title('carros azul', 'J.R.R. Tolkien').
book_title('1984', 'George Orwell').
book_title('Brave New World', 'Aldous Huxley').

author('J.R.R. Tolkien', 'fantasy').
author('George Orwell', 'dystopian').
author('Aldous Huxley', 'dystopian').

search_genre_book(X):-
    author(Y, X),
    book_title(Z, Y),
    write(Z).

