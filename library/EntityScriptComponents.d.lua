---@meta

---@class EntityScriptComponents
local m = {}
---@class EntityScriptComponentReplicas
local r = {}
---@type rideable
m.rideable={}
---@type pinnable
m.pinnable={}
---@type forestresourcespawner
m.forestresourcespawner={}
---@type staffsanity
m.staffsanity={}
---@type shadowdominance
m.shadowdominance={}
---@type prophider
m.prophider={}
---@type occupiable
m.occupiable={}
---@type circler
m.circler={}
---@type boatcannon
m.boatcannon={}
---@type health
m.health={}
---@type beargerspawner
m.beargerspawner={}
---@type talker
m.talker={}
---@type shard_worldvoter
m.shard_worldvoter={}
---@type feasts
m.feasts={}
---@type farming_manager
m.farming_manager={}
---@type touchstonetracker
m.touchstonetracker={}
---@type age
m.age={}
---@type oasis
m.oasis={}
---@type healthtrigger
m.healthtrigger={}
---@type hatchable
m.hatchable={}
---@type souleater
m.souleater={}
---@type firedetector
m.firedetector={}
---@type groundpounder
m.groundpounder={}
---@type groundshadowhandler
m.groundshadowhandler={}
---@type klaussackkey
m.klaussackkey={}
---@type skilltreeupdater
m.skilltreeupdater={}
---@type firebug
m.firebug={}
---@type boatrotator
m.boatrotator={}
---@type emitter
m.emitter={}
---@type mapspotrevealer
m.mapspotrevealer={}
---@type oceanfishingrod
m.oceanfishingrod={}
---@type shard_autosaver
m.shard_autosaver={}
---@type oar
m.oar={}
---@type ambientsound
m.ambientsound={}
---@type uniqueid
m.uniqueid={}
---@type areaunlock
m.areaunlock={}
---@type attuner
m.attuner={}
---@type minionspawner
m.minionspawner={}
---@type lighter
m.lighter={}
---@type uniqueprefabids
m.uniqueprefabids={}
---@type dsp
m.dsp={}
---@type aoeweapon_base
m.aoeweapon_base={}
---@type armor
m.armor={}
---@type deployhelper
m.deployhelper={}
---@type npc_talker
m.npc_talker={}
---@type resistance
m.resistance={}
---@type useableitem
m.useableitem={}
---@type seasons
m.seasons={}
---@type constructionsite
m.constructionsite={}
---@type curseditem
m.curseditem={}
---@type setbonus
m.setbonus={}
---@type playercontroller
m.playercontroller={}
---@type sisturnregistry
m.sisturnregistry={}
---@type waterphysics
m.waterphysics={}
---@type dryable
m.dryable={}
---@type hudindicatorwatcher
m.hudindicatorwatcher={}
---@type furnituredecor
m.furnituredecor={}
---@type unwrappable
m.unwrappable={}
---@type sanity
m.sanity={}
---@type playerspawner
m.playerspawner={}
---@type boatcannonuser
m.boatcannonuser={}
---@type upgrademoduleowner
m.upgrademoduleowner={}
---@type explosiveresist
m.explosiveresist={}
---@type winter_treeseed
m.winter_treeseed={}
---@type playermetrics
m.playermetrics={}
---@type penguinspawner
m.penguinspawner={}
---@type prototyper
m.prototyper={}
---@type objectspawner
m.objectspawner={}
---@type fishingnet
m.fishingnet={}
---@type moisture
m.moisture={}
---@type childspawner
m.childspawner={}
---@type fencerotator
m.fencerotator={}
---@type savedscale
m.savedscale={}
---@type playerprox
m.playerprox={}
---@type markable_proxy
m.markable_proxy={}
---@type grottowaterfallsoundcontroller
m.grottowaterfallsoundcontroller={}
---@type spellcaster
m.spellcaster={}
---@type inspectable
m.inspectable={}
---@type lunarplant_tentacle_weapon
m.lunarplant_tentacle_weapon={}
---@type boatdrifter
m.boatdrifter={}
---@type scaler
m.scaler={}
---@type edible
m.edible={}
---@type foodmemory
m.foodmemory={}
---@type forgerepair
m.forgerepair={}
---@type walkableplatform
m.walkableplatform={}
---@type parryweapon
m.parryweapon={}
---@type decay
m.decay={}
---@type timer
m.timer={}
---@type forgerepairable
m.forgerepairable={}
---@type yotc_racecompetitor
m.yotc_racecompetitor={}
---@type moistureimmunity
m.moistureimmunity={}
---@type vasedecoration
m.vasedecoration={}
---@type finiteuses
m.finiteuses={}
---@type poppable
m.poppable={}
---@type followerherder
m.followerherder={}
---@type writeable
m.writeable={}
---@type kramped
m.kramped={}
---@type heavyobstacleusetarget
m.heavyobstacleusetarget={}
---@type townportalregistry
m.townportalregistry={}
---@type flotationdevice
m.flotationdevice={}
---@type itemweigher
m.itemweigher={}
---@type areaaware
m.areaaware={}
---@type lightningblocker
m.lightningblocker={}
---@type constructionbuilder
m.constructionbuilder={}
---@type farmsoildrinker
m.farmsoildrinker={}
---@type farmplantstress
m.farmplantstress={}
---@type focalpoint
m.focalpoint={}
---@type weapon
m.weapon={}
---@type grower
m.grower={}
---@type yotb_stagemanager
m.yotb_stagemanager={}
---@type efficientuser
m.efficientuser={}
---@type crewmember
m.crewmember={}
---@type walkableplatformplayer
m.walkableplatformplayer={}
---@type propagator
m.propagator={}
---@type shedder
m.shedder={}
---@type grogginess
m.grogginess={}
---@type deerclopsspawner
m.deerclopsspawner={}
---@type cookbookupdater
m.cookbookupdater={}
---@type halloweenmoonmutable
m.halloweenmoonmutable={}
---@type murderable
m.murderable={}
---@type formationleader
m.formationleader={}
---@type caveweather
m.caveweather={}
---@type worldstate
m.worldstate={}
---@type shatterfx
m.shatterfx={}
---@type ghostlyelixir
m.ghostlyelixir={}
---@type aura
m.aura={}
---@type selfstacker
m.selfstacker={}
---@type boatphysics
m.boatphysics={}
---@type spooked
m.spooked={}
---@type malbatrossspawner
m.malbatrossspawner={}
---@type transformer
m.transformer={}
---@type highlightchild
m.highlightchild={}
---@type dumbbelllifter
m.dumbbelllifter={}
---@type lunarhailmanager
m.lunarhailmanager={}
---@type yotc_racestats
m.yotc_racestats={}
---@type temperatureoverrider
m.temperatureoverrider={}
---@type gym
m.gym={}
---@type spell
m.spell={}
---@type crop
m.crop={}
---@type plantable
m.plantable={}
---@type mast
m.mast={}
---@type diseaseable
m.diseaseable={}
---@type workable
m.workable={}
---@type lunarriftmutationsmanager
m.lunarriftmutationsmanager={}
---@type worldcharacterselectlobby
m.worldcharacterselectlobby={}
---@type fueler
m.fueler={}
---@type maxhealer
m.maxhealer={}
---@type frostybreather
m.frostybreather={}
---@type inventoryitemmoisture
m.inventoryitemmoisture={}
---@type sinkholespawner
m.sinkholespawner={}
---@type oceanfishingtackle
m.oceanfishingtackle={}
---@type terraformer
m.terraformer={}
---@type epicscare
m.epicscare={}
---@type researchpointconverter
m.researchpointconverter={}
---@type transparentonsanity
m.transparentonsanity={}
---@type sharklistener
m.sharklistener={}
---@type beefalometrics
m.beefalometrics={}
---@type markable
m.markable={}
---@type ruinsshadelingspawner
m.ruinsshadelingspawner={}
---@type tackler
m.tackler={}
---@type colourcube
m.colourcube={}
---@type updatelooper
m.updatelooper={}
---@type floater
m.floater={}
---@type wateryprotection
m.wateryprotection={}
---@type domesticatable
m.domesticatable={}
---@type klaussackloot
m.klaussackloot={}
---@type itemaffinity
m.itemaffinity={}
---@type recipestockpile
m.recipestockpile={}
---@type damagetyperesist
m.damagetyperesist={}
---@type forestpetrification
m.forestpetrification={}
---@type inventory
m.inventory={}
---@type perishable
m.perishable={}
---@type attackdodger
m.attackdodger={}
---@type targettracker
m.targettracker={}
---@type channelcastable
m.channelcastable={}
---@type blowinwind
m.blowinwind={}
---@type positionalwarp
m.positionalwarp={}
---@type repairable
m.repairable={}
---@type quagmire_hangriness
m.quagmire_hangriness={}
---@type hudindicatable
m.hudindicatable={}
---@type spawnfader
m.spawnfader={}
---@type autoterraformer
m.autoterraformer={}
---@type worker
m.worker={}
---@type messagebottlemanager
m.messagebottlemanager={}
---@type playerinspectable
m.playerinspectable={}
---@type shard_clock
m.shard_clock={}
---@type playertargetindicator
m.playertargetindicator={}
---@type unevenground
m.unevenground={}
---@type savedrotation
m.savedrotation={}
---@type hounded
m.hounded={}
---@type trap
m.trap={}
---@type playervision
m.playervision={}
---@type deciduoustreeupdater
m.deciduoustreeupdater={}
---@type unsaddler
m.unsaddler={}
---@type steeringwheel
m.steeringwheel={}
---@type cookiecutterdrill
m.cookiecutterdrill={}
---@type oceanfishable
m.oceanfishable={}
---@type harvestable
m.harvestable={}
---@type balloonmaker
m.balloonmaker={}
---@type farmtiller
m.farmtiller={}
---@type heater
m.heater={}
---@type birdattractor
m.birdattractor={}
---@type useabletargeteditem
m.useabletargeteditem={}
---@type wintersfeasttable
m.wintersfeasttable={}
---@type chessunlocks
m.chessunlocks={}
---@type carnivalgameshooter
m.carnivalgameshooter={}
---@type damagereflect
m.damagereflect={}
---@type weighable
m.weighable={}
---@type petrifiable
m.petrifiable={}
---@type key
m.key={}
---@type shard_sinkholes
m.shard_sinkholes={}
---@type hauntable
m.hauntable={}
---@type stageactingprop
m.stageactingprop={}
---@type moonbeastspawner
m.moonbeastspawner={}
---@type drawable
m.drawable={}
---@type knownlocations
m.knownlocations={}
---@type tradable
m.tradable={}
---@type reloaditem
m.reloaditem={}
---@type watersource
m.watersource={}
---@type carnivalgameitem
m.carnivalgameitem={}
---@type storyteller
m.storyteller={}
---@type canopylightrays
m.canopylightrays={}
---@type fan
m.fan={}
---@type playeractionpicker
m.playeractionpicker={}
---@type maprecorder
m.maprecorder={}
---@type uianim
m.uianim={}
---@type shardstate
m.shardstate={}
---@type klaussackspawner
m.klaussackspawner={}
---@type sandstorms
m.sandstorms={}
---@type compostingbin
m.compostingbin={}
---@type singingshelltrigger
m.singingshelltrigger={}
---@type hideandseekhidingspot
m.hideandseekhidingspot={}
---@type fillable
m.fillable={}
---@type playervoter
m.playervoter={}
---@type moosespawner
m.moosespawner={}
---@type migrationpetowner
m.migrationpetowner={}
---@type erasablepaper
m.erasablepaper={}
---@type pickable
m.pickable={}
---@type follower
m.follower={}
---@type instrument
m.instrument={}
---@type coach
m.coach={}
---@type dataanalyzer
m.dataanalyzer={}
---@type named
m.named={}
---@type inventoryitemholder
m.inventoryitemholder={}
---@type shaveable
m.shaveable={}
---@type teleporter
m.teleporter={}
---@type groomer
m.groomer={}
---@type beaverness
m.beaverness={}
---@type storytellingprop
m.storytellingprop={}
---@type embarker
m.embarker={}
---@type debuffable
m.debuffable={}
---@type circuitnode
m.circuitnode={}
---@type ambientlighting
m.ambientlighting={}
---@type mermcandidate
m.mermcandidate={}
---@type sittable
m.sittable={}
---@type repairer
m.repairer={}
---@type grouptargeter
m.grouptargeter={}
---@type healer
m.healer={}
---@type minigame
m.minigame={}
---@type spellbook
m.spellbook={}
---@type brushable
m.brushable={}
---@type sheltered
m.sheltered={}
---@type mightiness
m.mightiness={}
---@type meteorshower
m.meteorshower={}
---@type moonstormwatcher
m.moonstormwatcher={}
---@type fuel
m.fuel={}
---@type projectile
m.projectile={}
---@type yotc_raceprizemanager
m.yotc_raceprizemanager={}
---@type growable
m.growable={}
---@type hullhealth
m.hullhealth={}
---@type pethealthbar
m.pethealthbar={}
---@type wardrobe
m.wardrobe={}
---@type dockmanager
m.dockmanager={}
---@type upgrademoduleremover
m.upgrademoduleremover={}
---@type frograin
m.frograin={}
---@type mermkingmanager
m.mermkingmanager={}
---@type saltlicker
m.saltlicker={}
---@type occupier
m.occupier={}
---@type sharkboimanagerhelper
m.sharkboimanagerhelper={}
---@type walkingplankuser
m.walkingplankuser={}
---@type oceancolor
m.oceancolor={}
---@type sleepingbag
m.sleepingbag={}
---@type carnivalevent
m.carnivalevent={}
---@type fishschool
m.fishschool={}
---@type incrementalproducer
m.incrementalproducer={}
---@type moonstorms
m.moonstorms={}
---@type entitytracker
m.entitytracker={}
---@type lunarthrall_plantspawner
m.lunarthrall_plantspawner={}
---@type firefx
m.firefx={}
---@type shaver
m.shaver={}
---@type sewing
m.sewing={}
---@type farmplanttendable
m.farmplanttendable={}
---@type maxlightspawner
m.maxlightspawner={}
---@type boatringdata
m.boatringdata={}
---@type stormwatcher
m.stormwatcher={}
---@type nightmareclock
m.nightmareclock={}
---@type replayproxy
m.replayproxy={}
---@type witherable
m.witherable={}
---@type rider
m.rider={}
---@type daywalkerspawner
m.daywalkerspawner={}
---@type thief
m.thief={}
---@type plantregistryupdater
m.plantregistryupdater={}
---@type bathbombable
m.bathbombable={}
---@type damagetypebonus
m.damagetypebonus={}
---@type miasmamanager
m.miasmamanager={}
---@type fishingnetvisualizer
m.fishingnetvisualizer={}
---@type riftspawner
m.riftspawner={}
---@type planardamage
m.planardamage={}
---@type steeringwheeluser
m.steeringwheeluser={}
---@type deployable
m.deployable={}
---@type beard
m.beard={}
---@type schoolspawner
m.schoolspawner={}
---@type hunger
m.hunger={}
---@type healthsyncer
m.healthsyncer={}
---@type workmultiplier
m.workmultiplier={}
---@type miasmawatcher
m.miasmawatcher={}
---@type playbill
m.playbill={}
---@type wereeater
m.wereeater={}
---@type worldmeteorshower
m.worldmeteorshower={}
---@type hull
m.hull={}
---@type amorphous
m.amorphous={}
---@type yotb_sewer
m.yotb_sewer={}
---@type homeseeker
m.homeseeker={}
---@type papereraser
m.papereraser={}
---@type pocketwatch_dismantler
m.pocketwatch_dismantler={}
---@type mine
m.mine={}
---@type worldoverseer
m.worldoverseer={}
---@type colouraddersync
m.colouraddersync={}
---@type sharkboimanager
m.sharkboimanager={}
---@type clock
m.clock={}
---@type upgrader
m.upgrader={}
---@type formationfollower
m.formationfollower={}
---@type debuff
m.debuff={}
---@type minigameparticipator
m.minigameparticipator={}
---@type spellbookcooldowns
m.spellbookcooldowns={}
---@type retrofitforestmap_anr
m.retrofitforestmap_anr={}
---@type lootdropper
m.lootdropper={}
---@type singinginspiration
m.singinginspiration={}
---@type bathbomb
m.bathbomb={}
---@type freezable
m.freezable={}
---@type hideandseekgame
m.hideandseekgame={}
---@type cooldown
m.cooldown={}
---@type shadowlevel
m.shadowlevel={}
---@type wax
m.wax={}
---@type brush
m.brush={}
---@type oceantrawler
m.oceantrawler={}
---@type builder
m.builder={}
---@type mightydumbbell
m.mightydumbbell={}
---@type canopyshadows
m.canopyshadows={}
---@type sandstormwatcher
m.sandstormwatcher={}
---@type stretcher
m.stretcher={}
---@type maxwelltalker
m.maxwelltalker={}
---@type container
m.container={}
---@type bloomer
m.bloomer={}
---@type anchor
m.anchor={}
---@type spectatorcorpse
m.spectatorcorpse={}
---@type channelable
m.channelable={}
---@type cyclable
m.cyclable={}
---@type lavaarenaeventstate
m.lavaarenaeventstate={}
---@type carnivaldecorranker
m.carnivaldecorranker={}
---@type distancetracker
m.distancetracker={}
---@type dynamicmusic
m.dynamicmusic={}
---@type tool
m.tool={}
---@type lighttweener
m.lighttweener={}
---@type walkingplank
m.walkingplank={}
---@type rainimmunity
m.rainimmunity={}
---@type boatai
m.boatai={}
---@type portablestructure
m.portablestructure={}
---@type stunnable
m.stunnable={}
---@type attunable
m.attunable={}
---@type regrowthmanager
m.regrowthmanager={}
---@type friendlevels
m.friendlevels={}
---@type heavyobstaclephysics
m.heavyobstaclephysics={}
---@type lavaarenamobtracker
m.lavaarenamobtracker={}
---@type playeravatardata
m.playeravatardata={}
---@type cattoy
m.cattoy={}
---@type catcher
m.catcher={}
---@type cookable
m.cookable={}
---@type carnivalgamefeedable
m.carnivalgamefeedable={}
---@type klaussacklock
m.klaussacklock={}
---@type boatpatch
m.boatpatch={}
---@type autosaver
m.autosaver={}
---@type aoeweapon_lunge
m.aoeweapon_lunge={}
---@type boatmagnet
m.boatmagnet={}
---@type fishable
m.fishable={}
---@type inkable
m.inkable={}
---@type constructionbuilderuidata
m.constructionbuilderuidata={}
---@type nutrients_visual_manager
m.nutrients_visual_manager={}
---@type butterflyspawner
m.butterflyspawner={}
---@type shadowsubmissive
m.shadowsubmissive={}
---@type channelcaster
m.channelcaster={}
---@type craftingstation
m.craftingstation={}
---@type electricattacks
m.electricattacks={}
---@type shard_seasons
m.shard_seasons={}
---@type complexprojectile
m.complexprojectile={}
---@type specialeventsetup
m.specialeventsetup={}
---@type shadowhandspawner
m.shadowhandspawner={}
---@type planarentity
m.planarentity={}
---@type preservative
m.preservative={}
---@type amphibiouscreature
m.amphibiouscreature={}
---@type damagetracker
m.damagetracker={}
---@type maprevealer
m.maprevealer={}
---@type spawner
m.spawner={}
---@type hitchable
m.hitchable={}
---@type houndedtarget
m.houndedtarget={}
---@type fertilizable
m.fertilizable={}
---@type deerherding
m.deerherding={}
---@type scrapbookable
m.scrapbookable={}
---@type worldmigrator
m.worldmigrator={}
---@type foodaffinity
m.foodaffinity={}
---@type moonstormmanager
m.moonstormmanager={}
---@type magiciantool
m.magiciantool={}
---@type worlddeciduoustreeupdater
m.worlddeciduoustreeupdater={}
---@type moonaltarlinktarget
m.moonaltarlinktarget={}
---@type recallmark
m.recallmark={}
---@type wintertreegiftable
m.wintertreegiftable={}
---@type carnivaldecor
m.carnivaldecor={}
---@type cooker
m.cooker={}
---@type boatring
m.boatring={}
---@type pointofinterest
m.pointofinterest={}
---@type acidlevel
m.acidlevel={}
---@type werebeast
m.werebeast={}
---@type charliecutscene
m.charliecutscene={}
---@type winch
m.winch={}
---@type treegrowthsolution
m.treegrowthsolution={}
---@type machine
m.machine={}
---@type teamattacker
m.teamattacker={}
---@type questowner
m.questowner={}
---@type equippable
m.equippable={}
---@type activatable
m.activatable={}
---@type fuelmaster
m.fuelmaster={}
---@type seamlessplayerswapper
m.seamlessplayerswapper={}
---@type drawingtool
m.drawingtool={}
---@type worldreset
m.worldreset={}
---@type quaker
m.quaker={}
---@type smotherer
m.smotherer={}
---@type periodicspawner
m.periodicspawner={}
---@type raindomewatcher
m.raindomewatcher={}
---@type boatmagnetbeacon
m.boatmagnetbeacon={}
---@type herd
m.herd={}
---@type carefulwalker
m.carefulwalker={}
---@type shop
m.shop={}
---@type worldsettings
m.worldsettings={}
---@type lavaarenamusic
m.lavaarenamusic={}
---@type mightygym
m.mightygym={}
---@type crittertraits
m.crittertraits={}
---@type distancefade
m.distancefade={}
---@type ghostlyelixirable
m.ghostlyelixirable={}
---@type eater
m.eater={}
---@type trophyscale
m.trophyscale={}
---@type fertilizer
m.fertilizer={}
---@type groundcreep
m.groundcreep={}
---@type playerhearing
m.playerhearing={}
---@type yotb_skinunlocker
m.yotb_skinunlocker={}
---@type giftreceiver
m.giftreceiver={}
---@type colouradder
m.colouradder={}
---@type brightmarespawner
m.brightmarespawner={}
---@type constructionplans
m.constructionplans={}
---@type squidspawner
m.squidspawner={}
---@type hideandseeker
m.hideandseeker={}
---@type preserver
m.preserver={}
---@type treasuremarked
m.treasuremarked={}
---@type debugger
m.debugger={}
---@type winchtarget
m.winchtarget={}
---@type lureplantspawner
m.lureplantspawner={}
---@type hitcher
m.hitcher={}
---@type bundler
m.bundler={}
---@type minigamespectator
m.minigamespectator={}
---@type deerherdspawner
m.deerherdspawner={}
---@type boattrailmover
m.boattrailmover={}
---@type highlight
m.highlight={}
---@type toadstoolspawner
m.toadstoolspawner={}
---@type spidermutator
m.spidermutator={}
---@type moonstormlightningmanager
m.moonstormlightningmanager={}
---@type reticule
m.reticule={}
---@type petleash
m.petleash={}
---@type teacher
m.teacher={}
---@type moonaltarlink
m.moonaltarlink={}
---@type inventoryitem
m.inventoryitem={}
---@type symbolswapdata
m.symbolswapdata={}
---@type kitcoonden
m.kitcoonden={}
---@type forcecompostable
m.forcecompostable={}
---@type oldager
m.oldager={}
---@type commander
m.commander={}
---@type custombuildmanager
m.custombuildmanager={}
---@type oceanicemanager
m.oceanicemanager={}
---@type fertilizerresearchable
m.fertilizerresearchable={}
---@type quagmire_recipeprices
m.quagmire_recipeprices={}
---@type containerproxy
m.containerproxy={}
---@type aoespell
m.aoespell={}
---@type locomotor
m.locomotor={}
---@type sizetweener
m.sizetweener={}
---@type explosive
m.explosive={}
---@type worldtemperature
m.worldtemperature={}
---@type upgradeable
m.upgradeable={}
---@type insulator
m.insulator={}
---@type stackable
m.stackable={}
---@type worldvoter
m.worldvoter={}
---@type simplebook
m.simplebook={}
---@type boatleak
m.boatleak={}
---@type piratespawner
m.piratespawner={}
---@type lordfruitflytrigger
m.lordfruitflytrigger={}
---@type stuckdetection
m.stuckdetection={}
---@type desolationspawner
m.desolationspawner={}
---@type moonrelic
m.moonrelic={}
---@type bedazzlement
m.bedazzlement={}
---@type wisecracker
m.wisecracker={}
---@type worldwind
m.worldwind={}
---@type wildfires
m.wildfires={}
---@type kitcoon
m.kitcoon={}
---@type birdspawner
m.birdspawner={}
---@type playbill_lecturn
m.playbill_lecturn={}
---@type bedazzler
m.bedazzler={}
---@type cursable
m.cursable={}
---@type hallucinations
m.hallucinations={}
---@type areatrigger
m.areatrigger={}
---@type appraisable
m.appraisable={}
---@type leader
m.leader={}
---@type retrofitcavemap_anr
m.retrofitcavemap_anr={}
---@type weather
m.weather={}
---@type oceanthrowable
m.oceanthrowable={}
---@type blinkstaff
m.blinkstaff={}
---@type mood
m.mood={}
---@type rechargeable
m.rechargeable={}
---@type battery
m.battery={}
---@type tacklesketch
m.tacklesketch={}
---@type nis
m.nis={}
---@type placer
m.placer={}
---@type combat
m.combat={}
---@type maprevealable
m.maprevealable={}
---@type archivemanager
m.archivemanager={}
---@type wereness
m.wereness={}
---@type waxable
m.waxable={}
---@type quagmire_music
m.quagmire_music={}
---@type herdmember
m.herdmember={}
---@type healthbar
m.healthbar={}
---@type planardefense
m.planardefense={}
---@type vase
m.vase={}
---@type aoetargeting
m.aoetargeting={}
---@type plantregrowth
m.plantregrowth={}
---@type singingshellmanager
m.singingshellmanager={}
---@type wagpunkmanager
m.wagpunkmanager={}
---@type shadowcreaturespawner
m.shadowcreaturespawner={}
---@type sentientaxe
m.sentientaxe={}
---@type upgrademodule
m.upgrademodule={}
---@type waterproofer
m.waterproofer={}
---@type repellent
m.repellent={}
---@type teleportedoverride
m.teleportedoverride={}
---@type fishingrod
m.fishingrod={}
---@type squadmember
m.squadmember={}
---@type grue
m.grue={}
---@type teamleader
m.teamleader={}
---@type hunter
m.hunter={}
---@type experiencecollector
m.experiencecollector={}
---@type stewer
m.stewer={}
---@type bait
m.bait={}
---@type skeletonsweeper
m.skeletonsweeper={}
---@type halloweenpotionmoon
m.halloweenpotionmoon={}
---@type discoverable
m.discoverable={}
---@type drownable
m.drownable={}
---@type tributable
m.tributable={}
---@type flotsamgenerator
m.flotsamgenerator={}
---@type possessedaxe
m.possessedaxe={}
---@type sanityaura
m.sanityaura={}
---@type fader
m.fader={}
---@type oceanfishinghook
m.oceanfishinghook={}
---@type despawnfader
m.despawnfader={}
---@type madsciencelab
m.madsciencelab={}
---@type burnable
m.burnable={}
---@type yotb_stager
m.yotb_stager={}
---@type shadowthrallmanager
m.shadowthrallmanager={}
---@type reader
m.reader={}
---@type hideout
m.hideout={}
---@type worldsettingstimer
m.worldsettingstimer={}
---@type undertile
m.undertile={}
---@type singable
m.singable={}
---@type crabkingspawner
m.crabkingspawner={}
---@type colourtweener
m.colourtweener={}
---@type disappears
m.disappears={}
---@type furnituredecortaker
m.furnituredecortaker={}
---@type digester
m.digester={}
---@type caveins
m.caveins={}
---@type simplemagicgrower
m.simplemagicgrower={}
---@type pollinator
m.pollinator={}
---@type bloomness
m.bloomness={}
---@type fueled
m.fueled={}
---@type ocean
m.ocean={}
---@type batteryuser
m.batteryuser={}
---@type wavemanager
m.wavemanager={}
---@type strongman
m.strongman={}
---@type aoeweapon_leap
m.aoeweapon_leap={}
---@type scenariorunner
m.scenariorunner={}
---@type rooted
m.rooted={}
---@type sleepingbaguser
m.sleepingbaguser={}
---@type boattrail
m.boattrail={}
---@type boatdrag
m.boatdrag={}
---@type sleeper
m.sleeper={}
---@type rampingspawner
m.rampingspawner={}
---@type yotc_racestart
m.yotc_racestart={}
---@type skinner_beefalo
m.skinner_beefalo={}
---@type gingerbreadhunter
m.gingerbreadhunter={}
---@type raindome
m.raindome={}
---@type dryer
m.dryer={}
---@type vanish_on_sleep
m.vanish_on_sleep={}
---@type walkableplatformmanager
m.walkableplatformmanager={}
---@type expertsailor
m.expertsailor={}
---@type pocketwatch
m.pocketwatch={}
---@type shard_worldreset
m.shard_worldreset={}
---@type book
m.book={}
---@type summoningitem
m.summoningitem={}
---@type shelf
m.shelf={}
---@type playerlightningtarget
m.playerlightningtarget={}
---@type boatcrew
m.boatcrew={}
---@type battleborn
m.battleborn={}
---@type stageactor
m.stageactor={}
---@type shard_players
m.shard_players={}
---@type temperature
m.temperature={}
---@type revivablecorpse
m.revivablecorpse={}
---@type toggleableitem
m.toggleableitem={}
---@type magician
m.magician={}
---@type slipperyfeet
m.slipperyfeet={}
---@type submersible
m.submersible={}
---@type farmplantable
m.farmplantable={}
---@type soul
m.soul={}
---@type plantresearchable
m.plantresearchable={}
---@type lock
m.lock={}
---@type saddler
m.saddler={}
---@type guardian
m.guardian={}
---@type grottowarmanager
m.grottowarmanager={}
---@type trader
m.trader={}
---@type bundlemaker
m.bundlemaker={}
---@type talkable
m.talkable={}
---@type skinner
m.skinner={}
---@type hudindicatablemanager
m.hudindicatablemanager={}
---@type carnivalhostsummon
m.carnivalhostsummon={}
---@type ghostlybond
m.ghostlybond={}
---@type quagmire_recipebook
m.quagmire_recipebook={}
---@type hideandseekhider
m.hideandseekhider={}
---@type moontrader
m.moontrader={}
---@type oceanfishingrod_replica
r.oceanfishingrod_replica={}
---@type sheltered_replica
r.sheltered_replica={}
---@type builder_replica
r.builder_replica={}
---@type hunger_replica
r.hunger_replica={}
---@type fishingrod_replica
r.fishingrod_replica={}
---@type health_replica
r.health_replica={}
---@type rider_replica
r.rider_replica={}
---@type moisture_replica
r.moisture_replica={}
---@type container_replica
r.container_replica={}
---@type follower_replica
r.follower_replica={}
---@type inventoryitem_replica
r.inventoryitem_replica={}
---@type named_replica
r.named_replica={}
---@type inventory_replica
r.inventory_replica={}
---@type writeable_replica
r.writeable_replica={}
---@type constructionsite_replica
r.constructionsite_replica={}
---@type combat_replica
r.combat_replica={}
---@type stackable_replica
r.stackable_replica={}
---@type equippable_replica
r.equippable_replica={}
---@type sanity_replica
r.sanity_replica={}

