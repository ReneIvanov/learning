#Product.delete_all
# . . .
Product.create(title: 'Kniha2',
descrption:
	%{<p>
		Toto je kniha o knihe2.
	</p>},
image_url: 'kniha2.jpg',
price: 26.00)
# . . .