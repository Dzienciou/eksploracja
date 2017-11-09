R1 = rand(10000);
h=hist(R1, 100)
imwrite(h, 'hist1zad1.png')

R2 = rand(1000);
h2=hist(R2, 100)
imwrite(h2, 'hist2zad1.png')
