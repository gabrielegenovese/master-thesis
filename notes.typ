= Notes

== A Partial Order View of Message-Passing Communication Models (POPL23)
$bb(P)$ : set of processes/partecipants ($p,q,r,...$)

$bb(M)$ : set of messags ($m 1,m 2 , m 3,...$)

#image("img/contri.png", width: 80%)

=== Definition of Message Sequence Chart (MSC)
An MSC over $bb(P)$ and $bb(M)$ is a tuple $M = (Epsilon, arrow, lt.tri, lambda)$ where $Epsilon$ is finite (possibly empty) set of events, $lambda: Epsilon arrow Sigma$ is a labelling function that associates an action to each event, and $arrow, lt.tri$ are binart relations on $Epsilon$ that satisfy the following three conditions. For $p in bb(P)$, let $Epsilon_p = \{e in Epsilon | lambda (e) in Sigma_p \}$ be the set of vents that are executed by $p$.

1. The process relation $arrow subset.eq Epsilon times Epsilon$ relates an event to its immediate successor on the same process: $arrow = union.big_(p in bb(P)) arrow_p$ for some relations $arrow_p subset.eq Epsilon_p times Epsilon_p$ such that $arrow_p$ is the direct successor relation of a total order on $Epsilon_p$.
2. The message relation $lt.tri subset.eq Epsilon times Epsilon$ relates pair of matching send/receive events:

    2a. for every pair $(e,f) in lt.tri$, there are two processes $p,q$ and a message $m$ such that $lambda (f) = "send"(p, q, m)$and $lambda (f) = "rec"(p, q, m)$.

    2b. for all $f in Epsilon$, with $lambda (f) = "rec"(p, q, m)$, there is exactly one $e in Epsilon$ such that $e lt.tri Epsilon$.

    2c. for all $e in Epsilon$ such that $lambda (f) = "send"(p, q, m)$, there is at most one $f in Epsilon$ such that $e lt.tri f$.

3. The happens-before relation $lt.eq _"hb"$, defined by $(arrow union lt.tri)^*$, is a partial order on $Epsilon$.

=== Fully async

In the fully asynchronous communication model (`asy`), messages can be received at any time once they have been sent, and send events are non-blocking. It can be modeled as a bag where all messages are stored and retrieved by processes when necessary. It is also referred to as NON-FIFO. The definition is the same as MSC.

=== Peer-to-peer 
In the peer-to-peer (`p2p`) communication model, any two messages sent from one process to another are always received in the same order as they are sent. This is usually implemented by processes pairwise connected with FIFO channels. Alternative names are FIFO 1−1 or simply FIFO.

A p2p-MSC is an MSC $M = (E, →, lt.tri, λ)$ where, for any two send events $s$ and $s'$ such that $λ(s) ∈ "send"(p, q, \_), λ(s') ∈ "send"(p, q, \_)$, and $s arrow^+ s'$, one of the following holds:
- either $s, s' ∈ "matched"(M)$ with $s lt.tri r$ and $s' lt.tri r'$ and $r arrow^+ r'$,
- or $s' ∈ "unmatched"(M)$.
Note that we cannot have two messages $m 1$ and $m 2$, both sent by $p$ to $q$, in that order, such that $m 1$ is unmatched and $m 2$ is matched; unmatched message $m 1$ excludes the reception of any later message.

=== Causally ordered
In the causally ordered (`co`) communication model, messages are delivered to a process according to the causality of their emissions. In other words, if there are two messages $m 1$ and $m 2$ with the same recipient, such that there exists a causal path from $m 1$ to $m 2$, then $m 1$ must be received before $m 2$. Causal ordering was introduced by Lamport with the name "happened before" order.

An MSC $M = (E, →, lt.tri, λ)$ is causally ordered if, for any two send $s$ and $s'$, such that $λ(s) ∈ "send"(\_, q, \_), λ(s') ∈ "send"(\_, q, \_)$, and $s lt.eq_"hb" s'$:
- either $s, s' ∈ "matched"(M)$ and $r arrow^* r'$, with $r$ and $r'$ receive events such that $s lt.tri r$ and $s' lt.tri r'$.
- or $s' ∈ "unmatched"(M)$.

Note that in a `co`-MSC we cannot have two send events $s$ and $s'$ addressed to the same process, such that $s$ is unmatched, $s'$ is matched, and $s ≤_"hb" s'$.

=== Mailbox

=== FIFO 1-n

=== FIFO n-n

=== RSC

== Fossacs 2020 (Leatitia)

=== Definition of conflict graph
Intuitively, we have a dependency whenever two messages have a process in common.

The conflict graph `CG(e)` of a sequence of action $e = a_1...a_n$ is the labeled graph $(V, \{ arrow^(X Y) \}_(X,Y in \{R,S\}))$ where $V$ is the set of message exchanges of $e$, and for all $X,Y in \{S,R\}$, for all $v, v' in V$, there is a $X Y$ dependency edge $v arrow^(X Y) v'$ between $v$ and $v'$ if there are $i < j$ such that $\{a_i\} = v sect X, \{a_j\} = v' sect Y$, and $"proc"_X(v)="proc"_Y(v')$.

#image("img/conflict.png", width: 80%)

=== Definition of $k$-synchronous
$k$ denotes a given integer $k gt.eq 1$. A $k$-exchange denotes a sequence of action starting with at most $k$ sends and followed by at most $k$ receives matching some of the sends. An MSC is $k$-synchronous if there exists a linearisation that is breakable into a sequence of $k$-exchanges sucj that a message sent during a $k$-exchange cannot be received during a subsequent one: either it is received during the same $k$-exchange, or it remains orphan forever.

An MSC `msc` is $k$-synchronous if:
1. there exists a linearisation of $m$ $e=e_1 dot e_2 ... e_n$ where for all $i in [1...n]$, $e_i in S^(lt.eq k) dot R^(lt.eq k)$,
2. $m$ satisfies causal delivery,
3. for all $j, j'$ such that $a_j |-| a_(j')$ holds in $e, a_j |-| a_(j')$ holds in some $e_i$.

An execution $e$ is $k$-synchronizable if $m(e)$ is $k$-synchronous.

We write $s T r_k (frak(S))$ to denote the set $\{m(e) | e in a s E x (frak(S))$ and $m(e)$ is $k$-synchronous$\}$.


== Loic thesis

=== Definition of borderline violation

Let $and.big_(bb(P), bb(I), bb(V))$ be an alphabet of communications. A borderline violation is an execution $e= e' dot ι ?^p$v over $and.big_(bb(P), bb(I), bb(V))$ such that $e'$ is RSC, and $e$ is not causally equivalent to an RSC execution.


== Random notes

bouajiani on the completness of verifying

guardare prove di loic 