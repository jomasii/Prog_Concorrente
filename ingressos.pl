use strict;
use warnings;
use threads;
use threads::shared;


my $ingressos_vendidos :shared = 0;

sub get_ingresso {
   
    lock($ingressos_vendidos); 
    return $ingressos_vendidos++;
}

sub participante {
    get_ingresso();
}

sub main {
    my @lista_de_threads;

    for my $i (0 .. 100) {

        my $t = threads->create(\&participante);
        push @lista_de_threads, $t;
    }

    foreach my $t (@lista_de_threads) {
        $t->join();
    }

    print "Total de Ingressos vendidos: $ingressos_vendidos\n";
}

main();