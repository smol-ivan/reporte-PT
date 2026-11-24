#show: doc => article(
$if(title)$
  title: "$title$",
$endif$
$if(abstract)$
  abstract: [$abstract$],
$endif$
$if(by-author)$
  authors: (
$for(by-author)$
$if(it.name.literal)$
    (
      name: "$it.name.literal$",
      department: [$for(it.affiliations)$$it.name$$sep$, $endfor$],
      organization: [UAM Cuajimalpa],
      email: "$it.email$"
    ),
$endif$
$endfor$
  ),
$endif$
  doc,
)
