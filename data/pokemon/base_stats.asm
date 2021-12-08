; used in data/pokemon/base_stats/*.asm
tmhm: MACRO
; initialize bytes to 0
for n, (NUM_TM_HM_TUTOR + 7) / 8
_tm{d:n} = 0
endr
; set bits of bytes
rept _NARG
	if DEF(\1_TMNUM)
n = (\1_TMNUM - 1) / 8
i = (\1_TMNUM - 1) % 8
_tm{d:n} = _tm{d:n} | (1 << i)
	else
		fail "\1 is not a TM, HM, or tutor move"
	endc
	shift
endr
; output bytes
for n, (NUM_TM_HM_TUTOR + 7) / 8
	db _tm{d:n}
endr
ENDM

BaseData::
	table_width BASE_DATA_SIZE, BaseData
INCLUDE "data/pokemon/base_stats/submino.asm"
INCLUDE "data/pokemon/base_stats/subzilla.asm"
INCLUDE "data/pokemon/base_stats/subzilante.asm"
INCLUDE "data/pokemon/base_stats/grassnip.asm"
INCLUDE "data/pokemon/base_stats/lopsoil.asm"
INCLUDE "data/pokemon/base_stats/haerazor.asm"
INCLUDE "data/pokemon/base_stats/cubburn.asm"
INCLUDE "data/pokemon/base_stats/coaldiak.asm"
INCLUDE "data/pokemon/base_stats/grillzly.asm"
INCLUDE "data/pokemon/base_stats/hippour.asm"
INCLUDE "data/pokemon/base_stats/drippour.asm"
INCLUDE "data/pokemon/base_stats/hiptorrent.asm"
INCLUDE "data/pokemon/base_stats/hamsel.asm"
INCLUDE "data/pokemon/base_stats/guinapi.asm"
INCLUDE "data/pokemon/base_stats/oposster.asm"
INCLUDE "data/pokemon/base_stats/possumus.asm"
INCLUDE "data/pokemon/base_stats/axalitl.asm"
INCLUDE "data/pokemon/base_stats/axalot.asm"
INCLUDE "data/pokemon/base_stats/hopstot.asm"
INCLUDE "data/pokemon/base_stats/locuts.asm"
INCLUDE "data/pokemon/base_stats/chawpper.asm"
INCLUDE "data/pokemon/base_stats/snolipoli.asm"
INCLUDE "data/pokemon/base_stats/crystalis.asm"
INCLUDE "data/pokemon/base_stats/hailoth.asm"
INCLUDE "data/pokemon/base_stats/teakbeak.asm"
INCLUDE "data/pokemon/base_stats/woodrill.asm"
INCLUDE "data/pokemon/base_stats/fowllet.asm"
INCLUDE "data/pokemon/base_stats/flockshot.asm"
INCLUDE "data/pokemon/base_stats/qartridge.asm"
INCLUDE "data/pokemon/base_stats/louspout.asm"
INCLUDE "data/pokemon/base_stats/clinchiton.asm"
INCLUDE "data/pokemon/base_stats/skardine.asm"
INCLUDE "data/pokemon/base_stats/skargaros.asm"
INCLUDE "data/pokemon/base_stats/spikidna.asm"
INCLUDE "data/pokemon/base_stats/echlipse.asm"
INCLUDE "data/pokemon/base_stats/echneedo.asm"
INCLUDE "data/pokemon/base_stats/kittery.asm"
INCLUDE "data/pokemon/base_stats/felite.asm"
INCLUDE "data/pokemon/base_stats/felectric.asm"
INCLUDE "data/pokemon/base_stats/hiszard.asm"
INCLUDE "data/pokemon/base_stats/repvial.asm"
INCLUDE "data/pokemon/base_stats/komodose.asm"
INCLUDE "data/pokemon/base_stats/cursior.asm"
INCLUDE "data/pokemon/base_stats/envoil.asm"
INCLUDE "data/pokemon/base_stats/navitar.asm"
INCLUDE "data/pokemon/base_stats/slickrete.asm"
INCLUDE "data/pokemon/base_stats/gasphalt.asm"
INCLUDE "data/pokemon/base_stats/ingrovert.asm"
INCLUDE "data/pokemon/base_stats/friteshade.asm"
INCLUDE "data/pokemon/base_stats/bugglar.asm"
INCLUDE "data/pokemon/base_stats/spydar.asm"
INCLUDE "data/pokemon/base_stats/porcelion.asm"
INCLUDE "data/pokemon/base_stats/fuuma.asm"
INCLUDE "data/pokemon/base_stats/wallopy.asm"
INCLUDE "data/pokemon/base_stats/jabaroo.asm"
INCLUDE "data/pokemon/base_stats/orizuru.asm"
INCLUDE "data/pokemon/base_stats/origeron.asm"
INCLUDE "data/pokemon/base_stats/binars.asm"
INCLUDE "data/pokemon/base_stats/bushidude.asm"
INCLUDE "data/pokemon/base_stats/sinistar.asm"
INCLUDE "data/pokemon/base_stats/dronnel.asm"
INCLUDE "data/pokemon/base_stats/rumblebee.asm"
INCLUDE "data/pokemon/base_stats/baground.asm"
INCLUDE "data/pokemon/base_stats/terrager.asm"
INCLUDE "data/pokemon/base_stats/cauldegar.asm"
INCLUDE "data/pokemon/base_stats/rockade.asm"
INCLUDE "data/pokemon/base_stats/barrock.asm"
INCLUDE "data/pokemon/base_stats/marblock.asm"
INCLUDE "data/pokemon/base_stats/sliverfish.asm"
INCLUDE "data/pokemon/base_stats/reddot.asm"
INCLUDE "data/pokemon/base_stats/polkapix.asm"
INCLUDE "data/pokemon/base_stats/impan.asm"
INCLUDE "data/pokemon/base_stats/daetyr.asm"
INCLUDE "data/pokemon/base_stats/daemoon.asm"
INCLUDE "data/pokemon/base_stats/sabarinth.asm"
INCLUDE "data/pokemon/base_stats/bombardle.asm"
INCLUDE "data/pokemon/base_stats/antennian.asm"
INCLUDE "data/pokemon/base_stats/okapsi.asm"
INCLUDE "data/pokemon/base_stats/telekapi.asm"
INCLUDE "data/pokemon/base_stats/kaiyak.asm"
INCLUDE "data/pokemon/base_stats/surfallo.asm"
INCLUDE "data/pokemon/base_stats/hemogoblin.asm"
INCLUDE "data/pokemon/base_stats/platapox.asm"
INCLUDE "data/pokemon/base_stats/platyrus.asm"
INCLUDE "data/pokemon/base_stats/searling.asm"
INCLUDE "data/pokemon/base_stats/flaribou.asm"
INCLUDE "data/pokemon/base_stats/marskrat.asm"
INCLUDE "data/pokemon/base_stats/catybara.asm"
INCLUDE "data/pokemon/base_stats/crescaldo.asm"
INCLUDE "data/pokemon/base_stats/pescaldo.asm"
INCLUDE "data/pokemon/base_stats/plumpling.asm"
INCLUDE "data/pokemon/base_stats/leapear.asm"
INCLUDE "data/pokemon/base_stats/leviathorn.asm"
INCLUDE "data/pokemon/base_stats/strawrble.asm"
INCLUDE "data/pokemon/base_stats/strawmerri.asm"
INCLUDE "data/pokemon/base_stats/strawmenad.asm"
INCLUDE "data/pokemon/base_stats/pampooch_s.asm"
INCLUDE "data/pokemon/base_stats/pampodour_s.asm"
INCLUDE "data/pokemon/base_stats/pampooch_p.asm"
INCLUDE "data/pokemon/base_stats/pampodour_p.asm"
INCLUDE "data/pokemon/base_stats/pampooch_t.asm"
INCLUDE "data/pokemon/base_stats/pampodour_t.asm"
INCLUDE "data/pokemon/base_stats/tutsweet.asm"
INCLUDE "data/pokemon/base_stats/tutufrutti.asm"
INCLUDE "data/pokemon/base_stats/scrumshef.asm"
INCLUDE "data/pokemon/base_stats/sousfle.asm"
INCLUDE "data/pokemon/base_stats/apashee.asm"
INCLUDE "data/pokemon/base_stats/commanshee.asm"
INCLUDE "data/pokemon/base_stats/ditto.asm"
INCLUDE "data/pokemon/base_stats/constabold.asm"
INCLUDE "data/pokemon/base_stats/tarotis.asm"
INCLUDE "data/pokemon/base_stats/orchantis.asm"
INCLUDE "data/pokemon/base_stats/hocupocus.asm"
INCLUDE "data/pokemon/base_stats/prestician.asm"
INCLUDE "data/pokemon/base_stats/doracle.asm"
INCLUDE "data/pokemon/base_stats/delphora.asm"
INCLUDE "data/pokemon/base_stats/xsailerate.asm"
INCLUDE "data/pokemon/base_stats/diviper.asm"
INCLUDE "data/pokemon/base_stats/snorcobra.asm"
INCLUDE "data/pokemon/base_stats/espunge.asm"
INCLUDE "data/pokemon/base_stats/ziggrath.asm"
INCLUDE "data/pokemon/base_stats/canvalog.asm"
INCLUDE "data/pokemon/base_stats/plasmanian.asm"
INCLUDE "data/pokemon/base_stats/cladillo.asm"
INCLUDE "data/pokemon/base_stats/armordillo.asm"
INCLUDE "data/pokemon/base_stats/cloakroak.asm"
INCLUDE "data/pokemon/base_stats/camoufraug.asm"
INCLUDE "data/pokemon/base_stats/miraugger.asm"
INCLUDE "data/pokemon/base_stats/trubble.asm"
INCLUDE "data/pokemon/base_stats/golgranite.asm"
INCLUDE "data/pokemon/base_stats/swinedel.asm"
INCLUDE "data/pokemon/base_stats/colomental.asm"
INCLUDE "data/pokemon/base_stats/elecmental.asm"
INCLUDE "data/pokemon/base_stats/occumental.asm"
INCLUDE "data/pokemon/base_stats/sedimental.asm"
INCLUDE "data/pokemon/base_stats/gaiamental.asm"
INCLUDE "data/pokemon/base_stats/ignimental.asm"
INCLUDE "data/pokemon/base_stats/omanyte.asm"
INCLUDE "data/pokemon/base_stats/omastar.asm"
INCLUDE "data/pokemon/base_stats/kabuto.asm"
INCLUDE "data/pokemon/base_stats/kabutops.asm"
INCLUDE "data/pokemon/base_stats/aerodactyl.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/articuno.asm"
INCLUDE "data/pokemon/base_stats/zapdos.asm"
INCLUDE "data/pokemon/base_stats/moltres.asm"
INCLUDE "data/pokemon/base_stats/dratini.asm"
INCLUDE "data/pokemon/base_stats/dragonair.asm"
INCLUDE "data/pokemon/base_stats/dragonite.asm"
INCLUDE "data/pokemon/base_stats/mewtwo.asm"
INCLUDE "data/pokemon/base_stats/mew.asm"
INCLUDE "data/pokemon/base_stats/chikorita.asm"
INCLUDE "data/pokemon/base_stats/bayleef.asm"
INCLUDE "data/pokemon/base_stats/meganium.asm"
INCLUDE "data/pokemon/base_stats/cyndaquil.asm"
INCLUDE "data/pokemon/base_stats/quilava.asm"
INCLUDE "data/pokemon/base_stats/typhlosion.asm"
INCLUDE "data/pokemon/base_stats/totodile.asm"
INCLUDE "data/pokemon/base_stats/croconaw.asm"
INCLUDE "data/pokemon/base_stats/feraligatr.asm"
INCLUDE "data/pokemon/base_stats/sentret.asm"
INCLUDE "data/pokemon/base_stats/furret.asm"
INCLUDE "data/pokemon/base_stats/hoothoot.asm"
INCLUDE "data/pokemon/base_stats/noctowl.asm"
INCLUDE "data/pokemon/base_stats/ledyba.asm"
INCLUDE "data/pokemon/base_stats/ledian.asm"
INCLUDE "data/pokemon/base_stats/spinarak.asm"
INCLUDE "data/pokemon/base_stats/ariados.asm"
INCLUDE "data/pokemon/base_stats/crobat.asm"
INCLUDE "data/pokemon/base_stats/chinchou.asm"
INCLUDE "data/pokemon/base_stats/lanturn.asm"
INCLUDE "data/pokemon/base_stats/pichu.asm"
INCLUDE "data/pokemon/base_stats/cleffa.asm"
INCLUDE "data/pokemon/base_stats/igglybuff.asm"
INCLUDE "data/pokemon/base_stats/togepi.asm"
INCLUDE "data/pokemon/base_stats/togetic.asm"
INCLUDE "data/pokemon/base_stats/natu.asm"
INCLUDE "data/pokemon/base_stats/xatu.asm"
INCLUDE "data/pokemon/base_stats/mareep.asm"
INCLUDE "data/pokemon/base_stats/flaaffy.asm"
INCLUDE "data/pokemon/base_stats/ampharos.asm"
INCLUDE "data/pokemon/base_stats/bellossom.asm"
INCLUDE "data/pokemon/base_stats/marill.asm"
INCLUDE "data/pokemon/base_stats/azumarill.asm"
INCLUDE "data/pokemon/base_stats/sudowoodo.asm"
INCLUDE "data/pokemon/base_stats/politoed.asm"
INCLUDE "data/pokemon/base_stats/hoppip.asm"
INCLUDE "data/pokemon/base_stats/skiploom.asm"
INCLUDE "data/pokemon/base_stats/jumpluff.asm"
INCLUDE "data/pokemon/base_stats/aipom.asm"
INCLUDE "data/pokemon/base_stats/sunkern.asm"
INCLUDE "data/pokemon/base_stats/sunflora.asm"
INCLUDE "data/pokemon/base_stats/yanma.asm"
INCLUDE "data/pokemon/base_stats/wooper.asm"
INCLUDE "data/pokemon/base_stats/quagsire.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/murkrow.asm"
INCLUDE "data/pokemon/base_stats/slowking.asm"
INCLUDE "data/pokemon/base_stats/misdreavus.asm"
INCLUDE "data/pokemon/base_stats/unown.asm"
INCLUDE "data/pokemon/base_stats/wobbuffet.asm"
INCLUDE "data/pokemon/base_stats/girafarig.asm"
INCLUDE "data/pokemon/base_stats/pineco.asm"
INCLUDE "data/pokemon/base_stats/forretress.asm"
INCLUDE "data/pokemon/base_stats/dunsparce.asm"
INCLUDE "data/pokemon/base_stats/gligar.asm"
INCLUDE "data/pokemon/base_stats/steelix.asm"
INCLUDE "data/pokemon/base_stats/snubbull.asm"
INCLUDE "data/pokemon/base_stats/granbull.asm"
INCLUDE "data/pokemon/base_stats/qwilfish.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/shuckle.asm"
INCLUDE "data/pokemon/base_stats/heracross.asm"
INCLUDE "data/pokemon/base_stats/sneasel.asm"
INCLUDE "data/pokemon/base_stats/teddiursa.asm"
INCLUDE "data/pokemon/base_stats/ursaring.asm"
INCLUDE "data/pokemon/base_stats/slugma.asm"
INCLUDE "data/pokemon/base_stats/magcargo.asm"
INCLUDE "data/pokemon/base_stats/swinub.asm"
INCLUDE "data/pokemon/base_stats/piloswine.asm"
INCLUDE "data/pokemon/base_stats/corsola.asm"
INCLUDE "data/pokemon/base_stats/remoraid.asm"
INCLUDE "data/pokemon/base_stats/octillery.asm"
INCLUDE "data/pokemon/base_stats/delibird.asm"
INCLUDE "data/pokemon/base_stats/mantine.asm"
INCLUDE "data/pokemon/base_stats/skarmory.asm"
INCLUDE "data/pokemon/base_stats/houndour.asm"
INCLUDE "data/pokemon/base_stats/houndoom.asm"
INCLUDE "data/pokemon/base_stats/kingdra.asm"
INCLUDE "data/pokemon/base_stats/phanpy.asm"
INCLUDE "data/pokemon/base_stats/donphan.asm"
INCLUDE "data/pokemon/base_stats/porygo2.asm"
INCLUDE "data/pokemon/base_stats/stantler.asm"
INCLUDE "data/pokemon/base_stats/smeargle.asm"
INCLUDE "data/pokemon/base_stats/tyrogue.asm"
INCLUDE "data/pokemon/base_stats/hitmontop.asm"
INCLUDE "data/pokemon/base_stats/smoochum.asm"
INCLUDE "data/pokemon/base_stats/elekid.asm"
INCLUDE "data/pokemon/base_stats/magby.asm"
INCLUDE "data/pokemon/base_stats/miltank.asm"
INCLUDE "data/pokemon/base_stats/blissey.asm"
INCLUDE "data/pokemon/base_stats/raikou.asm"
INCLUDE "data/pokemon/base_stats/entei.asm"
INCLUDE "data/pokemon/base_stats/suicune.asm"
INCLUDE "data/pokemon/base_stats/larvitar.asm"
INCLUDE "data/pokemon/base_stats/pupitar.asm"
INCLUDE "data/pokemon/base_stats/tyranitar.asm"
INCLUDE "data/pokemon/base_stats/lugia.asm"
INCLUDE "data/pokemon/base_stats/ho_oh.asm"
INCLUDE "data/pokemon/base_stats/celebi.asm"
	assert_table_length NUM_POKEMON
