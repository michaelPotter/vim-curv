" Vim syntax file
" Language: Curv
" Maintainer: Michael Potter <mpotter.dev@gmail.com>
" Last Change: 2021-04-29

" if exists("b:current_syntax")
" 	finish
" endif

syn clear

syn keyword curvLetIn let in do
syn keyword curvImperativeKeywords if else while for
syn keyword curvBoolean complement union intersection difference symmetric_difference row
syn keyword curvTransform move rotate reflect scale at align stretch twist bend swirl

syn keyword curv2dShapes circle ellipse square rect regular_polygon polygon stroke half_plane
syn keyword curv3dShapes sphere ellipsoid cylinder cone torus box prism pyramid capsule half_space gyroid
syn keyword curvPolyShapes nothing everything

syn match curvComma ","
syn match curvPipeline ">>"

syn match curvNumbers "\<\d\|\.\d\|\<0x" contains=curvNumber display transparent
syn match curvNumber "\d\+" display contained
syn match curvNumber "\.\d\+" display contained
syn match curvNumber "0x[0-9A-F]\+" display contained

" TODO highlight string interpolations
syn region curvString start=/"/ skip=/\\"/ end=/"/ contains=curvStringInterpolation
syn match curvStringInterpolation "\$[a-zA-Z0-9_]\+" contained

syn match curvComment "//.*$" contains=@Spell,curvCommentTodo
syn keyword curvCommentTodo      TODO FIXME XXX TBD contained

" syn match curvFunction "[a-z0-9]\+(\@="


hi def link curv2dShapes Keyword
hi def link curv3dShapes Keyword
hi def link curvPolyShapes Keyword
hi def link curvImperativeKeywords Keyword
hi def link curvLetIn Type
hi def link curvBoolean Function
hi def link curvTransform Function
" hi def link curvFunction Function
hi def link curvNumbers Number
hi def link curvNumber Number
hi def link curvString String
hi def link curvStringInterpolation Special
hi def link curvComma Operator
hi def link curvPipeline Operator
hi def link curvComment Comment
hi def link curvCommentTodo Todo
