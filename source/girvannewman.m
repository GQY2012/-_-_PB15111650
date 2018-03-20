function [ clustering ] = girvannewman( A, k )
    clustering = components( A );
    n = max( clustering );
    while n < k
        [ ~, E ] = betweenness_centrality( A );
        [ x, y ] = find( E == max( max( E ) ), 1 );
        A( x, y ) = 0;
        A( y, x ) = 0;
        clustering = components( A );
        n = max(  clustering );
    end
end