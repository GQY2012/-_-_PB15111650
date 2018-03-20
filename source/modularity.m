function [ clustering ] = modularity( A, k )
    d = ( sum( A ) )';
    m = sum( d );
    B = A - d * d' / m;
    [ V, ~ ] = eigs( B, k );
    clustering = kmeans( V, k );
end