%example of energy dispersion along ky without coupling
d=parameters.d;
Nmax=parameters.Nmax;
den=100;
klist=linspace(-4*(pi)/(sqrt(3)*d),4*(pi)/(sqrt(3)*d),den);
eivmap=zeros((2*Nmax+1)^2,den);
for kindex=1:den
    k=klist(kindex);
    eiv=energy(0,k,parameters);
    eivmap(:,kindex)=eiv;
end
figure;
plot(klist/((pi)/(sqrt(3)*d)),1000*eivmap(1:20,:));
xlabel('normalized k_y/(GM)')
ylabel('energy(meV)')