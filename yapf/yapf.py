[style]
based_on_style=facebook
coalesce_brackets=True
# Join short lines into one line. E.g., single line 'if' statements.
join_multiple_lines=True
# Use spaces around default or named assigns.
spaces_around_default_or_named_assign=True

# If an argument / parameter list is going to be split, then split before
# the first argument.
split_before_first_argument=False

# Split named assignments onto individual lines.
split_before_named_assigns=True

# Set to True to split list comprehensions and generators that have
# non-trivial expressions and multiple clauses before each of these
# clauses. For example:
#
#   result = [
#       a_long_var + 100 for a_long_var in xrange(1000)
#       if a_long_var % 10]
#
# would reformat to something like:
#
#   result = [
#       a_long_var + 100
#       for a_long_var in xrange(1000)
#       if a_long_var % 10]
split_complex_comprehension=True
