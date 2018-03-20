function [ clustering ] = alinkjaccard( A, k )
    P = pdist( A, 'jaccard' );
    X = linkage( P, 'average' );
    clustering = cluster( X, k );
end