#import "@preview/rubber-article:0.1.0": *

#show link: underline
#show: article.with()

#set text(
  lang: "en"
)

#maketitle(
  title: "Notes",
  authors: (
    "Gabriele Genovese",
  ),
  date: datetime.today().display("[day] [month repr:long] [year]"),
)

#outline()

= A Partial Order View of Message-Passing Communication Models POPL23
$bb(P)$ : set of processes/partecipants ($p,q,r,...$)

$bb(M)$ : set of messags ($m 1,m 2 , m 3,...$)

#image("img/contri.png", width: 80%)

== Definition of Message Sequence Chart (MSC)
An MSC over $bb(P)$ and $bb(M)$ is a tuple $M = (Epsilon, arrow, lt.tri, lambda)$ where $Epsilon$ is finite (possibly empty) set of events, $lambda: Epsilon arrow Sigma$ is a labelling function that associates an action to each event, and $arrow, lt.tri$ are binart relations on $Epsilon$ that satisfy the following three conditions. For $p in bb(P)$, let $Epsilon_p = \{e in Epsilon | lambda (e) in Sigma_p \}$ be the set of vents that are executed by $p$.

1. The process relation $arrow subset.eq Epsilon times Epsilon$ relates an event to its immediate successor on the same process: $arrow = union.big_(p in bb(P)) arrow_p$ for some relations $arrow_p subset.eq Epsilon_p times Epsilon_p$ such that $arrow_p$ is the direct successor relation of a total order on $Epsilon_p$.
2. The message relation $lt.tri subset.eq Epsilon times Epsilon$ relates pair of matching send/receive events:

    2a. for every pair $(e,f) in lt.tri$, there are two processes $p,q$ and a message $m$ such that $lambda (f) = "send"(p, q, m)$and $lambda (f) = "rec"(p, q, m)$.

    2b. for all $f in Epsilon$, with $lambda (f) = "rec"(p, q, m)$, there is exactly one $e in Epsilon$ such that $e lt.tri Epsilon$.

    2c. for all $e in Epsilon$ such that $lambda (f) = "send"(p, q, m)$, there is at most one $f in Epsilon$ such that $e lt.tri f$.

3. The happens-before relation $lt.eq _"hb"$, defined by $(arrow union lt.tri)^*$, is a partial order on $Epsilon$.

== MSC Classes

=== Fully async

In the fully asynchronous communication model (`asy`), messages can be received at any time once they have been sent, and send events are non-blocking. It can be modeled as a bag where all messages are stored and retrieved by processes when necessary. It is also referred to as NON-FIFO. The definition is the same as MSC.

=== Peer-to-peer 
In the peer-to-peer (`p2p`) communication model, any two messages sent from one process to another are always received in the same order as they are sent. This is usually implemented by processes pairwise connected with FIFO channels. Alternative names are FIFO 1−1 or simply FIFO.

A p2p-MSC is an MSC $M = (E, →, lt.tri, λ)$ where, for any two send events $s$ and $s'$ such that $λ(s) in "send"(p, q, \_), λ(s') in "send"(p, q, \_)$, and $s arrow^+ s'$, one of the following holds:
- either $s, s' in "matched"(M)$ with $s lt.tri r$ and $s' lt.tri r'$ and $r arrow^+ r'$,
- or $s' in "unmatched"(M)$.
Note that we cannot have two messages $m 1$ and $m 2$, both sent by $p$ to $q$, in that order, such that $m 1$ is unmatched and $m 2$ is matched; unmatched message $m 1$ excludes the reception of any later message.

=== Causally ordered
In the causally ordered (`co`) communication model, messages are delivered to a process according to the causality of their emissions. In other words, if there are two messages $m 1$ and $m 2$ with the same recipient, such that there exists a causal path from $m 1$ to $m 2$, then $m 1$ must be received before $m 2$. Causal ordering was introduced by Lamport with the name "happened before" order.

An MSC $M = (E, →, lt.tri, λ)$ is causally ordered if, for any two send $s$ and $s'$, such that $λ(s) in "send"(\_, q, \_), λ(s') in "send"(\_, q, \_)$, and $s lt.eq_"hb" s'$:
- either $s, s' ∈ "matched"(M)$ and $r arrow^* r'$, with $r$ and $r'$ receive events such that $s lt.tri r$ and $s' lt.tri r'$.
- or $s' ∈ "unmatched"(M)$.

Note that in a `co`-MSC we cannot have two send events $s$ and $s'$ addressed to the same process, such that $s$ is unmatched, $s'$ is matched, and $s ≤_"hb" s'$.

=== Mailbox
In this model, any two messages sent to the same process, regardless of the sender, must be received in the same order as they are sent. If a process receives $m_1$ before $m_2$, then $m_1$ must have been sent before $m_2$. `mb` coordinates all the senders of a single receiver. This model is also called FIFO $n-1$.

An MSC $M = (E, →, lt.tri, λ)$ is a `mb`-MSC if it has a linearization $arrow.r.long.squiggly$ where, for any two send events $s$ and $s'$, such that $lambda (s) in "send"(\_,q,\_), lambda (s') in "send"(\_,q,\_)$, and $s arrow.r.long.squiggly s'$
- either $s,s' in "matched"(M)$ and $r arrow.r.long.squiggly r'$, where $s lt.tri r$ and $s' lt.tri r'$,
- or $s' in "unmatched"(M)$.

=== FIFO 1-n
This model is the dual of `mb`, it coordinates a sender with all the receivers. Any two messages sent by a process must be received in the same order as they are sent. These two messages might be received by different processes and the two receive events might be concurrent.

An MSC $M = (E, →, lt.tri, λ)$ is a `onen`-MSC if it has a linearization $arrow.r.long.squiggly$ where, for any two send events $s$ and $s'$, such that $lambda (s) in "send"(p,\_,\_), lambda (s') in "send"(p,\_,\_)$ and $s arrow^+ s'$ (which implies $s arrow.r.long.squiggly s'$)
- either $s,s' in "matched"(M)$ and $r arrow.r.long.squiggly r'$, with $r$ and $r'$ receive events such that $s lt.tri r$ and $s' lt.tri r'$,
- or $s' in "unmatched"(M)$.

=== FIFO n-n
In this model, messages are globally ordered and delivered according to their emission order. Any two messages must be received in the same order as they are sent. These two messages might be sent or receives by any process and the two send or receive events might be concurrent. The FIFO `n-n` coordinates all the senders with all the receivers.

An MSC $M = (E, →, lt.tri, λ)$ is a `nn`-MSC if it has a linearization $arrow.r.long.squiggly$ where, for any two send events $s$ and $s'$, such that $s arrow.r.long.squiggly s'$
- either $s, s' in "matched"(M)$ and $r arrow.r.long.squiggly r'$, with $r$ and $r'$ receive events such that $s lt.tri r$ and $s' lt.tri r'$,
- or $s' in "unmatched"(M)$.

=== RSC
This model imposes the existence of a scheduling such that any send event is immediately followed by its corresponding receive event.

An MSC $M = (E, →, lt.tri, λ)$ is an `rsc`-MSC if it has no unmatched send events and there is a linearization $arrow.r.long.squiggly$ where any matched send event is immediately followed by its respective receive event.

= Fossacs 2020 (Leatitia)

== Definition of conflict graph
Intuitively, we have a dependency whenever two messages have a process in common.

The conflict graph `CG(e)` of a sequence of action $e = a_1...a_n$ is the labeled graph $(V, \{ arrow^(X Y) \}_(X,Y in \{R,S\}))$ where $V$ is the set of message exchanges of $e$, and for all $X,Y in \{S,R\}$, for all $v, v' in V$, there is a $X Y$ dependency edge $v arrow^(X Y) v'$ between $v$ and $v'$ if there are $i < j$ such that $\{a_i\} = v sect X, \{a_j\} = v' sect Y$, and $"proc"_X(v)="proc"_Y(v')$.

#image("img/conflict.png", width: 80%)

== Definition of $k$-synchronous
$k$ denotes a given integer $k gt.eq 1$. A $k$-exchange denotes a sequence of action starting with at most $k$ sends and followed by at most $k$ receives matching some of the sends. An MSC is $k$-synchronous if there exists a linearisation that is breakable into a sequence of $k$-exchanges sucj that a message sent during a $k$-exchange cannot be received during a subsequent one: either it is received during the same $k$-exchange, or it remains orphan forever.

An MSC `msc` is $k$-synchronous if:
1. there exists a linearisation of $m$ $e=e_1 dot e_2 ... e_n$ where for all $i in [1...n]$, $e_i in S^(lt.eq k) dot R^(lt.eq k)$,
2. $m$ satisfies causal delivery,
3. for all $j, j'$ such that $a_j |-| a_(j')$ holds in $e, a_j |-| a_(j')$ holds in some $e_i$.

An execution $e$ is $k$-synchronizable if $m(e)$ is $k$-synchronous.

We write $s T r_k (frak(S))$ to denote the set $\{m(e) | e in a s E x (frak(S))$ and $m(e)$ is $k$-synchronous$\}$.


= Loic thesis

== Definition of Action Graph
Let $and.big_(PP, II, VV)$ be an alphabet of actions, and $e = a_1,..., a_n$ be an execution over this alphabet. The action graph of $e$, denoted `agraph`$(e)$, is the vertex-labelled directed graph ($\{1,...,n\}, prec_e, lambda $), where for all $i in \{1,...,n\}, lambda (i)=a_i$, and arcs follow from causal dependency: there is an arc between vertices $i$ and $j$ if $i prec_e j$.

== Definition of borderline violation

Let $and.big_(bb(P), bb(I), bb(V))$ be an alphabet of communications. A borderline violation is an execution $e= e' dot ι ?^p$v over $and.big_(bb(P), bb(I), bb(V))$ such that $e'$ is RSC, and $e$ is not causally equivalent to an RSC execution.

= Paper Alur (Realizability)

*Theorem 1*: Given a bounded MSC graph $G$, checking if $G$ is _weakly realizable_ is *undecidable*.
*Proof*: The proof is a reduction from the post correspondence problem (PCP).

*Lemma 2*: R(elaxed)PCP is undecidable.

*Theorem 3*: Checking _safe realizability_ of a bounded MSC-graph is in `EXPSPACE`.

*Theorem 4*: Checking _safe realizability_ of a bounded MSC-graph is `PSPACE`-hard.

== Verification (probabilemente non mi serve)

*Theorem 5*: Given an MSC-graph $G$ and an MSC $M$ over $k$ processes, there is an algorithm that decides in $O(|G| |M| k)$ time whether $M in L(G)$.

*Theorem 6*: Given an MSC-graph $G$ and an MSC $M$, it is `NP`-complete to determine if $M in L(G)$, even when $G$ is a complete graph, or when $G$ is an acyclic graph.

*Theorem 7*: Given an MSC-graph $G$ and an MSC $M$, there is an algorithm that in time $O(|G| |M|)$ determines whether $M in L^w (G)$.

*Theorem 8*: There are local properties $phi_1$ and $phi_2$ such that for a finite MSC set $L$, it is `coNP`-complete to determine if every MSC in $L^w$ satisfies $phi_1 or phi_2$.

*Theorem 9*: There is a boolean combination $phi$ of local properties, such that given a bounded MSC-graph $G$, it is undecidable to check if every MSC in $L^w (G)$ satisfies $phi$.