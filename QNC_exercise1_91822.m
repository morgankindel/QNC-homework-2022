%Exercise 1%
p = .2
n = 10
num_experiments = 1000
outcomes = binornd(n,p, num_experiments,1)

edges = -0.5:10.5;
counts = histcounts(outcomes, edges);
xAxis = edges(1:end-1)+diff(edges)/2;


bar(xAxis, counts./sum(counts))
hold on
xlabel(sprintf('PDF of binominal distribution, n=%d, p=%.2f, N=%d stimulations', n, p, num_experiments))
ylabel("probability")

y = binopdf(xAxis, n, p)
hold on 
plot(xAxis,y,'ro-')
legend('Simulated','theoretical')
title("Exercise 1")

