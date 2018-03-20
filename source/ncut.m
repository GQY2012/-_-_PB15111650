function [ clustering ] = ncut( A, k )
    D = full( diag( sum( A ) ) );
    L = D^(-1/2) * ( D - A ) * D^(-1/2);
    [ V, ~ ] = eigs( L, k, 'sm' );
    clustering = kmeans( V, k );
end