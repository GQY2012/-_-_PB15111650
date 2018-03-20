load( 'C:\Users\95850\Desktop\实验二\dataset\football.mat','A' );
[x,y] = find(A ~= 0);
z = [x.';y.'];
z = z.';
dlmwrite( 'C:\Users\95850\Desktop\实验二\gephi_input\football.csv', z, 'precision', '%d', 'newline', 'pc' );

load( 'C:\Users\95850\Desktop\实验二\dataset\polbooks.mat','A' );
[x,y] = find(A ~= 0);
z = [x.';y.'];
z = z.';
dlmwrite( 'C:\Users\95850\Desktop\实验二\gephi_input\polbooks.csv', z, 'precision', '%d', 'newline', 'pc' );

load( 'C:\Users\95850\Desktop\实验二\dataset\DBLP.mat','A' );
[x,y] = find(A ~= 0);
z = [x.';y.'];
z = z.';
dlmwrite( 'C:\Users\95850\Desktop\实验二\gephi_input\DBLP.csv', z, 'precision', '%d', 'newline', 'pc' );

load( 'C:\Users\95850\Desktop\实验二\dataset\Egonet.mat','x' );
[a,b] = find(x ~= 0);
z = [a.';b.'];
z = z.';
dlmwrite( 'C:\Users\95850\Desktop\实验二\gephi_input\Egonet.csv', z, 'precision', '%d', 'newline', 'pc' );

