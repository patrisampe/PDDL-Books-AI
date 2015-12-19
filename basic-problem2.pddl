(define (problem basic2) (:domain basic)
(:objects
	Harry_Potter_1
  Harry_Potter_2
  Star_Wars_1
  Star_Wars_2
  Crepusculo
  Cincuenta_Sombras_de_Grey
  Juego_de_Tronos
  l0 l1 l2 l3 l4 l5 l6 l7 l8 l9 l10 l11 l12 l13 l14 l15 l16 l17 l18 l19 l20 l21 l22 l23 l24 l25 l26 l27 l28 l29 l30 l31 l32 l33 l34 l35 l36 l37 l38 l39 l40 l41 l42 l43 l44 l45 l46 l47 l48 l49 
  l50 l51 l52 l53 l54 l55 l56 l57 l58 l59 l60 l61 l62 l63 l64 l65 l66 l67 l68 l69 l70 l71 l72 l73 l74 l75 l76 l77 l78 l79 l80 l81 l82 l83 l84 l85 l86 l87 l88 l89 l90 l91 l92 l93 l94 l95 l96 l97 l98 l99 
  l100 l101 l102 l103 l104 l105 l106 l107 l108 l109 l110 l111 l112 l113 l114 l115 l116 l117 l118 l119 l120 l121 l122 l123 l124 l125 l126 l127 l128 l129 l130 l131 l132 l133 l134 l135 l136 l137 l138 l139 l140 l141 l142 l143 l144 l145 l146 l147 l148 l149 
  l150 l151 l152 l153 l154 l155 l156 l157 l158 l159 l160 l161 l162 l163 l164 l165 l166 l167 l168 l169 l170 l171 l172 l173 l174 l175 l176 l177 l178 l179 l180 l181 l182 l183 l184 l185 l186 l187 l188 l189 l190 l191 l192 l193 l194 l195 l196 l197 l198 l199 
  l200 l201 l202 l203 l204 l205 l206 l207 l208 l209 l210 l211 l212 l213 l214 l215 l216 l217 l218 l219 l220 l221 l222 l223 l224 l225 l226 l227 l228 l229 l230 l231 l232 l233 l234 l235 l236 l237 l238 l239 l240 l241 l242 l243 l244 l245 l246 l247 l248 l249 
  l250 l251 l252 l253 l254 l255 l256 l257 l258 l259 l260 l261 l262 l263 l264 l265 l266 l267 l268 l269 l270 l271 l272 l273 l274 l275 l276 l277 l278 l279 l280 l281 l282 l283 l284 l285 l286 l287 l288 l289 l290 l291 l292 l293 l294 l295 l296 l297 l298 l299
  - libro
)

(:init
  ; Predecesores
  (predecesor Harry_Potter_2 Harry_Potter_1)
  (predecesor Star_Wars_2 Star_Wars_1)
  (predecesor l1 l0)
  (predecesor l5 l4)
  (predecesor l10 l9)
  (predecesor l100 l99)
  (predecesor l175 l174)
  (predecesor l200 l199)
  (predecesor l250 l249)
  (predecesor l264 l263)
  ; Libros que ya hemos leido
  (leido Harry_Potter_1)
  (leido Star_Wars_1)
  (leido Star_Wars_2)
  (leido l249)
  (leido l4)
  (leido l123)
  ; Libros que deseamos leer
  (deseado Harry_Potter_2)
  (deseado Crepusculo)
  (deseado Cincuenta_Sombras_de_Grey)
  (deseado Juego_de_Tronos)
)

(:goal (and
  (forall (?l - libro) (imply (deseado ?l) (leido ?l)))  
	)
)
)