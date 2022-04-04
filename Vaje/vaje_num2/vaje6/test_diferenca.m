f = @(x) 1 / (x+1);

diferenca(f, 1, "prema", 0.000000001, 1/2)
diferenca(f, 1, "obratna", 0.000000001, 1/2)
diferenca(f, 1, "simetricna", 0.000000001, 1/2)

diferenca(f, 2, "simetricna", 0.00001, 1/2)