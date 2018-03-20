function [ clustering ] = rcut( A, k )
    L = diag( sum( A ) ) - A;
    [ V, ~ ] = eigs( L, k, 'sm' );
    clustering = kmeans( V, k );
end