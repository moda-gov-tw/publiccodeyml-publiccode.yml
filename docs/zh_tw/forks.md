\# Forks and variants

As already cited before, a fork may have two different forms based on
the final aim. As such, in order to make it clear how to handle the
\[publiccode.yml\]{.title-ref} in both cases, below we define two
different semantics: technical forks and software variants.

\## Technical forks (i.e. to publish patches)

A technical fork is a fork made by a developer for the purpose of
working on the original code base or sending improvements to the
original authors, without any explicit goal of creating and publishing
an alternative variant of the original software.

In the context of distributed control systems and collaborative code
hosting platforms like GitHub, forking is almost always used by
developers as a step to work on a contribution on an existing codebase,
by sending \"pull requests\".

Because of the way forking works on GitHub and other platforms,
developers publish their forks as perfect copies of the original
software, thus including also \[publiccode.yml\]{.title-ref}. However,
parsers need to be able to distinguish such technical forks from the
original codebase.

\### Parsers

Parsers **SHOULD** identify a technical fork by noticing that the
top-level \[url\]{.title-ref} key does not point to the repository in
which the \[publiccode.yml\]{.title-ref} is found.

Parsers **MIGHT** identify a technical fork also through metadata that
might be exposed by the code hosting platform (eg: GitHub marks forks
explicitly as forks)

\### Authors

Authors of technical forks **SHOULD NOT** modify
\[publiccode.yml\]{.title-ref} in any way. Specifically, they **MUST
NOT** modify the top-level \[url\]{.title-ref} key that **MUST**
continue pointing to the original repository.

There is no explicit key to mark a fork as a technical fork. This is a
conscious design decision because we do not want authors of technical
forks to be aware of \[publiccode.yml\]{.title-ref} and necessarily be
aware of how to modify it. The current design does not require authors
to do anything.

\## Software variants

A software variant is a fork that is offered as an alternative to the
original upstream software.

It contains modifications that are still not part of the upstream
version, like more features, different dependencies, optimizations, etc.

By marking a fork as a variant, the author indicates that they believe
that the variant includes a complete and working set of modifications
that might be useful to other people.

Marking a fork as a variant does **not** relate to the willingness of
contributing upstream; the author might still plan to contribute the
modifications upstream, or even being in the process of doing so. Thus,
even if the fork will eventually be merged upstream, it might make sense
to mark it as a variant during the process, so that others might
discover it and benefit from it.

\### Parsers

Parsers **SHOULD** identify a variant by noticing that the top-level
\[url\]{.title-ref} key matches to the repository in which the
\[publiccode.yml\]{.title-ref} is found, **AND** a top-level
\[isBasedOn\]{.title-ref} exists and points to a different repository.

Parsers should expect and analyze other differences in
\[publiccode.yml\]{.title-ref} between variants of the software.
Specifically \[description/features\]{.title-ref} is designed to be
compared across variants to identify and show user-visible differences.

\### Authors

Authors that are willing to publish a fork as a variant **MUST** at
least:

-   add a key \[isBasedOn\]{.title-ref} pointing to one or more upstream
    repositories from which this variant is derived.
-   Change the value for \[url\]{.title-ref} to point to the repository
    holding the variant.
-   Change the value for \[legal/repoOwner\]{.title-ref} to refer to the
    themselves (the authors of the variant).
-   Revisit the \[maintenance\]{.title-ref} section to refer to the
    maintenance status of the variant.

Moreover, authors **SHOULD** evaluate the following changes:

-   add the features that differentiate the variant to the
    \[description/features\]{.title-ref} key. Existing features **SHOULD
    NOT** be edited or removed from this list unless they have been
    removed from the variant, to allow parsers to easily compare feature
    lists.
