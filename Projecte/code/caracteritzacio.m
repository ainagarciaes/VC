function struct_caracteristiques = extreu_caracteristiques(imatge, imatge_seg) % crida a totes les funcions de caracteristiques i guarda els resultats en un struct que sera una fila de la nostra taula de dades usades per pendre posteriorment les decisions. El struct aquest s'haurà de definir pero seran basicament els camps necessaris de cada característica

#-----------------------------------------------------------------------------#

function np = num_petals(seg_img)
 
function [r, g, b] = color_petals(imatge, imatge_seg) % poso la segmentada per poder fer una mask nomes amb la part de les flors

function angle_orientacio = orientacio_imatge(imatge, imatge_seg) % no se si necessitem les dos, borrar el que calgui)

function [r g b] = color_centre(imatge, imatge_seg)

function [height width] = altura_amplada_flor(imatge_seg)

function [height width] = altura_amplada_centre(params) % no se si es la normal, les dues o una tercera nomes amb el centre???? potser caldra altres auxiliars per trobar el centre segons els tipus que pugui haver-hi

function relacio = relacio_centre_flor(hc, wc, hp, wp) % simplement fer una divisio o algo, es la que hem parlat en el apartat G del document
