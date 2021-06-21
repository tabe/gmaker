## -*- mode: R -*-
##
## Copyright (C) 2021 Takeshi Abe
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

#' Print a recipe
#'
#' Print a recipe.
#'
#' @param target a target filename.
#' @param source a vector of source filenames. NULL for empty dependencies.
#' @param command a vector of command lines. NULL for empty lines. Default: NULL.
#' @export
print_recipe <- function(target, source, command = NULL) {
    cat(sprintf("%s:", target))
    for (s in source) {
        cat(sprintf(" %s", s))
    }
    cat("\n")
    for (k in command) {
        cat(sprintf("\t%s\n", k))
    }
    cat("\n")
}
