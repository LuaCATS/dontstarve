---@meta

---@class EntityScriptComponents
local m = {}
---@class replica
local r = {}
---@type perishable
m.perishable={}
---@type decay
m.decay={}
---@type objectspawner
m.objectspawner={}
---@type messagebottlemanager
m.messagebottlemanager={}
---@type bathbomb
m.bathbomb={}
---@type uniqueid
m.uniqueid={}
---@type childspawner
m.childspawner={}
---@type fueler
m.fueler={}
---@type moonbeastspawner
m.moonbeastspawner={}
---@type brightmarespawner
m.brightmarespawner={}
---@type rampingspawner
m.rampingspawner={}
---@type dockmanager
m.dockmanager={}
---@type tacklesketch
m.tacklesketch={}
---@type symbolswapdata
m.symbolswapdata={}
---@type reloaditem
m.reloaditem={}
---@type transparentonsanity
m.transparentonsanity={}
---@type shadowsubmissive
m.shadowsubmissive={}
---@type guardian
m.guardian={}
---@type treasuremarked
m.treasuremarked={}
---@type bedazzlement
m.bedazzlement={}
---@type specialeventsetup
m.specialeventsetup={}
---@type edible
m.edible={}
---@type inspectable
m.inspectable={}
---@type talker
m.talker={}
---@type yotb_stager
m.yotb_stager={}
---@type shard_worldreset
m.shard_worldreset={}
---@type follower
m.follower={}
---@type nightmareclock
m.nightmareclock={}
---@type miasmawatcher
m.miasmawatcher={}
---@type crabkingspawner
m.crabkingspawner={}
---@type shop
m.shop={}
---@type fader
m.fader={}
---@type shadowhandspawner
m.shadowhandspawner={}
---@type colouradder
m.colouradder={}
---@type shaveable
m.shaveable={}
---@type reticule
m.reticule={}
---@type fertilizerresearchable
m.fertilizerresearchable={}
---@type selfstacker
m.selfstacker={}
---@type upgrademoduleremover
m.upgrademoduleremover={}
---@type unevenground
m.unevenground={}
---@type spellcaster
m.spellcaster={}
---@type maprevealer
m.maprevealer={}
---@type mightygym
m.mightygym={}
---@type cursable
m.cursable={}
---@type mine
m.mine={}
---@type resistance
m.resistance={}
---@type oceanthrowable
m.oceanthrowable={}
---@type minigamespectator
m.minigamespectator={}
---@type staffsanity
m.staffsanity={}
---@type rideable
m.rideable={}
---@type boatphysics
m.boatphysics={}
---@type penguinspawner
m.penguinspawner={}
---@type charliecutscene
m.charliecutscene={}
---@type lureplantspawner
m.lureplantspawner={}
---@type quagmire_recipeprices
m.quagmire_recipeprices={}
---@type fishingrod
m.fishingrod={}
---@type channelcastable
m.channelcastable={}
---@type singingshellmanager
m.singingshellmanager={}
---@type shadowdominance
m.shadowdominance={}
---@type repairer
m.repairer={}
---@type shard_clock
m.shard_clock={}
---@type desolationspawner
m.desolationspawner={}
---@type pethealthbar
m.pethealthbar={}
---@type seamlessplayerswapper
m.seamlessplayerswapper={}
---@type teamleader
m.teamleader={}
---@type murderable
m.murderable={}
---@type lightningblocker
m.lightningblocker={}
---@type dryer
m.dryer={}
---@type attuner
m.attuner={}
---@type shelf
m.shelf={}
---@type workable
m.workable={}
---@type talkable
m.talkable={}
---@type savedscale
m.savedscale={}
---@type planarentity
m.planarentity={}
---@type singable
m.singable={}
---@type townportalregistry
m.townportalregistry={}
---@type herd
m.herd={}
---@type constructionbuilderuidata
m.constructionbuilderuidata={}
---@type trader
m.trader={}
---@type quagmire_hangriness
m.quagmire_hangriness={}
---@type tributable
m.tributable={}
---@type builder
m.builder={}
---@type heavyobstaclephysics
m.heavyobstaclephysics={}
---@type submersible
m.submersible={}
---@type embarker
m.embarker={}
---@type toggleableitem
m.toggleableitem={}
---@type wildfires
m.wildfires={}
---@type weather
m.weather={}
---@type catcher
m.catcher={}
---@type armor
m.armor={}
---@type forestresourcespawner
m.forestresourcespawner={}
---@type lordfruitflytrigger
m.lordfruitflytrigger={}
---@type daywalkerspawner
m.daywalkerspawner={}
---@type lavaarenamusic
m.lavaarenamusic={}
---@type cattoy
m.cattoy={}
---@type fuelmaster
m.fuelmaster={}
---@type ghostlyelixirable
m.ghostlyelixirable={}
---@type hull
m.hull={}
---@type frograin
m.frograin={}
---@type sanity
m.sanity={}
---@type dryable
m.dryable={}
---@type diseaseable
m.diseaseable={}
---@type quagmire_music
m.quagmire_music={}
---@type kramped
m.kramped={}
---@type heavyobstacleusetarget
m.heavyobstacleusetarget={}
---@type stormwatcher
m.stormwatcher={}
---@type healthbar
m.healthbar={}
---@type rechargeable
m.rechargeable={}
---@type shatterfx
m.shatterfx={}
---@type yotc_racestats
m.yotc_racestats={}
---@type disappears
m.disappears={}
---@type carnivalhostsummon
m.carnivalhostsummon={}
---@type beard
m.beard={}
---@type cooker
m.cooker={}
---@type saddler
m.saddler={}
---@type walkingplankuser
m.walkingplankuser={}
---@type boatmagnetbeacon
m.boatmagnetbeacon={}
---@type sisturnregistry
m.sisturnregistry={}
---@type walkingplank
m.walkingplank={}
---@type wintertreegiftable
m.wintertreegiftable={}
---@type simplebook
m.simplebook={}
---@type distancetracker
m.distancetracker={}
---@type lunarthrall_plantspawner
m.lunarthrall_plantspawner={}
---@type inkable
m.inkable={}
---@type machine
m.machine={}
---@type positionalwarp
m.positionalwarp={}
---@type shard_players
m.shard_players={}
---@type wereeater
m.wereeater={}
---@type birdattractor
m.birdattractor={}
---@type winter_treeseed
m.winter_treeseed={}
---@type carnivaldecorranker
m.carnivaldecorranker={}
---@type storytellingprop
m.storytellingprop={}
---@type yotc_racecompetitor
m.yotc_racecompetitor={}
---@type eater
m.eater={}
---@type waterphysics
m.waterphysics={}
---@type teleportedoverride
m.teleportedoverride={}
---@type explosiveresist
m.explosiveresist={}
---@type repairable
m.repairable={}
---@type damagereflect
m.damagereflect={}
---@type aoetargeting
m.aoetargeting={}
---@type amphibiouscreature
m.amphibiouscreature={}
---@type channelable
m.channelable={}
---@type crewmember
m.crewmember={}
---@type regrowthmanager
m.regrowthmanager={}
---@type dynamicmusic
m.dynamicmusic={}
---@type playbill_lecturn
m.playbill_lecturn={}
---@type scenariorunner
m.scenariorunner={}
---@type circler
m.circler={}
---@type wintersfeasttable
m.wintersfeasttable={}
---@type bait
m.bait={}
---@type freezable
m.freezable={}
---@type friendlevels
m.friendlevels={}
---@type distancefade
m.distancefade={}
---@type pinnable
m.pinnable={}
---@type lootdropper
m.lootdropper={}
---@type explosive
m.explosive={}
---@type researchpointconverter
m.researchpointconverter={}
---@type archivemanager
m.archivemanager={}
---@type grue
m.grue={}
---@type hideandseekhider
m.hideandseekhider={}
---@type smotherer
m.smotherer={}
---@type cookbookupdater
m.cookbookupdater={}
---@type shedder
m.shedder={}
---@type vase
m.vase={}
---@type hunger
m.hunger={}
---@type bundler
m.bundler={}
---@type sentientaxe
m.sentientaxe={}
---@type kitcoon
m.kitcoon={}
---@type forestpetrification
m.forestpetrification={}
---@type teacher
m.teacher={}
---@type playerlightningtarget
m.playerlightningtarget={}
---@type healer
m.healer={}
---@type fan
m.fan={}
---@type playeractionpicker
m.playeractionpicker={}
---@type prophider
m.prophider={}
---@type klaussacklock
m.klaussacklock={}
---@type petrifiable
m.petrifiable={}
---@type projectile
m.projectile={}
---@type blinkstaff
m.blinkstaff={}
---@type emitter
m.emitter={}
---@type spell
m.spell={}
---@type quaker
m.quaker={}
---@type lunarplant_tentacle_weapon
m.lunarplant_tentacle_weapon={}
---@type autosaver
m.autosaver={}
---@type storyteller
m.storyteller={}
---@type worldoverseer
m.worldoverseer={}
---@type firebug
m.firebug={}
---@type growable
m.growable={}
---@type boatringdata
m.boatringdata={}
---@type playbill
m.playbill={}
---@type carnivalevent
m.carnivalevent={}
---@type boatcrew
m.boatcrew={}
---@type amorphous
m.amorphous={}
---@type spawnfader
m.spawnfader={}
---@type wax
m.wax={}
---@type feasts
m.feasts={}
---@type tool
m.tool={}
---@type bloomer
m.bloomer={}
---@type bundlemaker
m.bundlemaker={}
---@type hunter
m.hunter={}
---@type anchor
m.anchor={}
---@type forgerepairable
m.forgerepairable={}
---@type walkableplatform
m.walkableplatform={}
---@type oasis
m.oasis={}
---@type flotsamgenerator
m.flotsamgenerator={}
---@type herdmember
m.herdmember={}
---@type lunarriftmutationsmanager
m.lunarriftmutationsmanager={}
---@type deployable
m.deployable={}
---@type weighable
m.weighable={}
---@type harvestable
m.harvestable={}
---@type scrapbookable
m.scrapbookable={}
---@type wagpunkmanager
m.wagpunkmanager={}
---@type coach
m.coach={}
---@type formationfollower
m.formationfollower={}
---@type grogginess
m.grogginess={}
---@type mightydumbbell
m.mightydumbbell={}
---@type mast
m.mast={}
---@type ghostlyelixir
m.ghostlyelixir={}
---@type shadowlevel
m.shadowlevel={}
---@type temperature
m.temperature={}
---@type oldager
m.oldager={}
---@type skeletonsweeper
m.skeletonsweeper={}
---@type tackler
m.tackler={}
---@type dsp
m.dsp={}
---@type drownable
m.drownable={}
---@type oceanfishingtackle
m.oceanfishingtackle={}
---@type highlight
m.highlight={}
---@type updatelooper
m.updatelooper={}
---@type papereraser
m.papereraser={}
---@type boatcannonuser
m.boatcannonuser={}
---@type attackdodger
m.attackdodger={}
---@type stackable
m.stackable={}
---@type shaver
m.shaver={}
---@type deerherding
m.deerherding={}
---@type useableitem
m.useableitem={}
---@type uianim
m.uianim={}
---@type moonstorms
m.moonstorms={}
---@type crop
m.crop={}
---@type gingerbreadhunter
m.gingerbreadhunter={}
---@type moontrader
m.moontrader={}
---@type mapspotrevealer
m.mapspotrevealer={}
---@type pocketwatch_dismantler
m.pocketwatch_dismantler={}
---@type spellbookcooldowns
m.spellbookcooldowns={}
---@type moistureimmunity
m.moistureimmunity={}
---@type frostybreather
m.frostybreather={}
---@type weapon
m.weapon={}
---@type playervision
m.playervision={}
---@type groundshadowhandler
m.groundshadowhandler={}
---@type raindome
m.raindome={}
---@type markable
m.markable={}
---@type walkableplatformmanager
m.walkableplatformmanager={}
---@type combat
m.combat={}
---@type beargerspawner
m.beargerspawner={}
---@type caveins
m.caveins={}
---@type schoolspawner
m.schoolspawner={}
---@type hallucinations
m.hallucinations={}
---@type aoeweapon_lunge
m.aoeweapon_lunge={}
---@type maprecorder
m.maprecorder={}
---@type colouraddersync
m.colouraddersync={}
---@type wavemanager
m.wavemanager={}
---@type bloomness
m.bloomness={}
---@type locomotor
m.locomotor={}
---@type waterproofer
m.waterproofer={}
---@type spawner
m.spawner={}
---@type riftspawner
m.riftspawner={}
---@type heater
m.heater={}
---@type hideandseekhidingspot
m.hideandseekhidingspot={}
---@type boatmagnet
m.boatmagnet={}
---@type epicscare
m.epicscare={}
---@type worldmigrator
m.worldmigrator={}
---@type undertile
m.undertile={}
---@type boattrailmover
m.boattrailmover={}
---@type carnivalgameitem
m.carnivalgameitem={}
---@type yotb_sewer
m.yotb_sewer={}
---@type shardstate
m.shardstate={}
---@type lunarhailmanager
m.lunarhailmanager={}
---@type acidlevel
m.acidlevel={}
---@type lavaarenamobtracker
m.lavaarenamobtracker={}
---@type trophyscale
m.trophyscale={}
---@type worldstate
m.worldstate={}
---@type inventoryitemholder
m.inventoryitemholder={}
---@type playerhearing
m.playerhearing={}
---@type plantresearchable
m.plantresearchable={}
---@type debuffable
m.debuffable={}
---@type cookable
m.cookable={}
---@type focalpoint
m.focalpoint={}
---@type burnable
m.burnable={}
---@type batteryuser
m.batteryuser={}
---@type occupiable
m.occupiable={}
---@type fishable
m.fishable={}
---@type occupier
m.occupier={}
---@type maxwelltalker
m.maxwelltalker={}
---@type forcecompostable
m.forcecompostable={}
---@type carnivaldecor
m.carnivaldecor={}
---@type sleepingbaguser
m.sleepingbaguser={}
---@type entitytracker
m.entitytracker={}
---@type stunnable
m.stunnable={}
---@type rooted
m.rooted={}
---@type farmplantstress
m.farmplantstress={}
---@type birdspawner
m.birdspawner={}
---@type inventoryitem
m.inventoryitem={}
---@type seasons
m.seasons={}
---@type squidspawner
m.squidspawner={}
---@type moonaltarlink
m.moonaltarlink={}
---@type carnivalgameshooter
m.carnivalgameshooter={}
---@type farmplantable
m.farmplantable={}
---@type transformer
m.transformer={}
---@type squadmember
m.squadmember={}
---@type steeringwheeluser
m.steeringwheeluser={}
---@type grouptargeter
m.grouptargeter={}
---@type gym
m.gym={}
---@type soul
m.soul={}
---@type prototyper
m.prototyper={}
---@type terraformer
m.terraformer={}
---@type appraisable
m.appraisable={}
---@type despawnfader
m.despawnfader={}
---@type itemaffinity
m.itemaffinity={}
---@type dataanalyzer
m.dataanalyzer={}
---@type bathbombable
m.bathbombable={}
---@type constructionplans
m.constructionplans={}
---@type maxhealer
m.maxhealer={}
---@type hudindicatablemanager
m.hudindicatablemanager={}
---@type caveweather
m.caveweather={}
---@type worldsettingstimer
m.worldsettingstimer={}
---@type hideandseeker
m.hideandseeker={}
---@type magiciantool
m.magiciantool={}
---@type debuff
m.debuff={}
---@type playervoter
m.playervoter={}
---@type moonstormwatcher
m.moonstormwatcher={}
---@type farming_manager
m.farming_manager={}
---@type boatai
m.boatai={}
---@type inventoryitemmoisture
m.inventoryitemmoisture={}
---@type stewer
m.stewer={}
---@type shard_seasons
m.shard_seasons={}
---@type uniqueprefabids
m.uniqueprefabids={}
---@type deerclopsspawner
m.deerclopsspawner={}
---@type sharkboimanagerhelper
m.sharkboimanagerhelper={}
---@type singingshelltrigger
m.singingshelltrigger={}
---@type foodmemory
m.foodmemory={}
---@type carefulwalker
m.carefulwalker={}
---@type age
m.age={}
---@type spooked
m.spooked={}
---@type moisture
m.moisture={}
---@type nutrients_visual_manager
m.nutrients_visual_manager={}
---@type deployhelper
m.deployhelper={}
---@type upgradeable
m.upgradeable={}
---@type oar
m.oar={}
---@type minionspawner
m.minionspawner={}
---@type moosespawner
m.moosespawner={}
---@type preservative
m.preservative={}
---@type singinginspiration
m.singinginspiration={}
---@type drawingtool
m.drawingtool={}
---@type groomer
m.groomer={}
---@type portablestructure
m.portablestructure={}
---@type moonrelic
m.moonrelic={}
---@type attunable
m.attunable={}
---@type named
m.named={}
---@type winch
m.winch={}
---@type hullhealth
m.hullhealth={}
---@type raindomewatcher
m.raindomewatcher={}
---@type houndedtarget
m.houndedtarget={}
---@type rainimmunity
m.rainimmunity={}
---@type clock
m.clock={}
---@type oceanfishingrod
m.oceanfishingrod={}
---@type kitcoonden
m.kitcoonden={}
---@type grower
m.grower={}
---@type deerherdspawner
m.deerherdspawner={}
---@type constructionbuilder
m.constructionbuilder={}
---@type furnituredecortaker
m.furnituredecortaker={}
---@type malbatrossspawner
m.malbatrossspawner={}
---@type pointofinterest
m.pointofinterest={}
---@type firedetector
m.firedetector={}
---@type quagmire_recipebook
m.quagmire_recipebook={}
---@type scaler
m.scaler={}
---@type pickable
m.pickable={}
---@type blowinwind
m.blowinwind={}
---@type mermcandidate
m.mermcandidate={}
---@type groundpounder
m.groundpounder={}
---@type fencerotator
m.fencerotator={}
---@type oceancolor
m.oceancolor={}
---@type reader
m.reader={}
---@type repellent
m.repellent={}
---@type recipestockpile
m.recipestockpile={}
---@type klaussackkey
m.klaussackkey={}
---@type autoterraformer
m.autoterraformer={}
---@type waxable
m.waxable={}
---@type formationleader
m.formationleader={}
---@type revivablecorpse
m.revivablecorpse={}
---@type flotationdevice
m.flotationdevice={}
---@type klaussackloot
m.klaussackloot={}
---@type health
m.health={}
---@type shard_autosaver
m.shard_autosaver={}
---@type knownlocations
m.knownlocations={}
---@type winchtarget
m.winchtarget={}
---@type fueled
m.fueled={}
---@type plantable
m.plantable={}
---@type targettracker
m.targettracker={}
---@type souleater
m.souleater={}
---@type areaunlock
m.areaunlock={}
---@type retrofitforestmap_anr
m.retrofitforestmap_anr={}
---@type oceanicemanager
m.oceanicemanager={}
---@type instrument
m.instrument={}
---@type homeseeker
m.homeseeker={}
---@type petleash
m.petleash={}
---@type constructionsite
m.constructionsite={}
---@type fishschool
m.fishschool={}
---@type boatdrifter
m.boatdrifter={}
---@type temperatureoverrider
m.temperatureoverrider={}
---@type aura
m.aura={}
---@type playercontroller
m.playercontroller={}
---@type lavaarenaeventstate
m.lavaarenaeventstate={}
---@type book
m.book={}
---@type boatring
m.boatring={}
---@type brushable
m.brushable={}
---@type retrofitcavemap_anr
m.retrofitcavemap_anr={}
---@type compostingbin
m.compostingbin={}
---@type areatrigger
m.areatrigger={}
---@type hudindicatorwatcher
m.hudindicatorwatcher={}
---@type farmplanttendable
m.farmplanttendable={}
---@type key
m.key={}
---@type shadowcreaturespawner
m.shadowcreaturespawner={}
---@type plantregistryupdater
m.plantregistryupdater={}
---@type worldcharacterselectlobby
m.worldcharacterselectlobby={}
---@type wisecracker
m.wisecracker={}
---@type wereness
m.wereness={}
---@type colourtweener
m.colourtweener={}
---@type balloonmaker
m.balloonmaker={}
---@type brush
m.brush={}
---@type canopyshadows
m.canopyshadows={}
---@type crittertraits
m.crittertraits={}
---@type sewing
m.sewing={}
---@type unwrappable
m.unwrappable={}
---@type battery
m.battery={}
---@type pollinator
m.pollinator={}
---@type electricattacks
m.electricattacks={}
---@type forgerepair
m.forgerepair={}
---@type planardefense
m.planardefense={}
---@type teamattacker
m.teamattacker={}
---@type walkableplatformplayer
m.walkableplatformplayer={}
---@type areaaware
m.areaaware={}
---@type werebeast
m.werebeast={}
---@type worlddeciduoustreeupdater
m.worlddeciduoustreeupdater={}
---@type maxlightspawner
m.maxlightspawner={}
---@type discoverable
m.discoverable={}
---@type thief
m.thief={}
---@type wardrobe
m.wardrobe={}
---@type curseditem
m.curseditem={}
---@type moonstormmanager
m.moonstormmanager={}
---@type activatable
m.activatable={}
---@type shadowthrallmanager
m.shadowthrallmanager={}
---@type propagator
m.propagator={}
---@type complexprojectile
m.complexprojectile={}
---@type boatpatch
m.boatpatch={}
---@type battleborn
m.battleborn={}
---@type maprevealable
m.maprevealable={}
---@type worldmeteorshower
m.worldmeteorshower={}
---@type vanish_on_sleep
m.vanish_on_sleep={}
---@type trap
m.trap={}
---@type hitcher
m.hitcher={}
---@type worldtemperature
m.worldtemperature={}
---@type channelcaster
m.channelcaster={}
---@type useabletargeteditem
m.useabletargeteditem={}
---@type damagetyperesist
m.damagetyperesist={}
---@type playerspawner
m.playerspawner={}
---@type sharklistener
m.sharklistener={}
---@type sizetweener
m.sizetweener={}
---@type halloweenpotionmoon
m.halloweenpotionmoon={}
---@type boattrail
m.boattrail={}
---@type sharkboimanager
m.sharkboimanager={}
---@type rider
m.rider={}
---@type playerinspectable
m.playerinspectable={}
---@type custombuildmanager
m.custombuildmanager={}
---@type erasablepaper
m.erasablepaper={}
---@type sheltered
m.sheltered={}
---@type aoespell
m.aoespell={}
---@type tradable
m.tradable={}
---@type planardamage
m.planardamage={}
---@type writeable
m.writeable={}
---@type touchstonetracker
m.touchstonetracker={}
---@type teleporter
m.teleporter={}
---@type cooldown
m.cooldown={}
---@type upgrademoduleowner
m.upgrademoduleowner={}
---@type craftingstation
m.craftingstation={}
---@type slipperyfeet
m.slipperyfeet={}
---@type moonaltarlinktarget
m.moonaltarlinktarget={}
---@type wateryprotection
m.wateryprotection={}
---@type boatdrag
m.boatdrag={}
---@type bedazzler
m.bedazzler={}
---@type playertargetindicator
m.playertargetindicator={}
---@type stuckdetection
m.stuckdetection={}
---@type giftreceiver
m.giftreceiver={}
---@type sandstorms
m.sandstorms={}
---@type shard_worldvoter
m.shard_worldvoter={}
---@type sleeper
m.sleeper={}
---@type followerherder
m.followerherder={}
---@type minigame
m.minigame={}
---@type damagetypebonus
m.damagetypebonus={}
---@type witherable
m.witherable={}
---@type yotc_racestart
m.yotc_racestart={}
---@type farmsoildrinker
m.farmsoildrinker={}
---@type lighter
m.lighter={}
---@type hauntable
m.hauntable={}
---@type fillable
m.fillable={}
---@type oceantrawler
m.oceantrawler={}
---@type colourcube
m.colourcube={}
---@type debugger
m.debugger={}
---@type watersource
m.watersource={}
---@type worldwind
m.worldwind={}
---@type damagetracker
m.damagetracker={}
---@type drawable
m.drawable={}
---@type chessunlocks
m.chessunlocks={}
---@type stageactor
m.stageactor={}
---@type skilltreeupdater
m.skilltreeupdater={}
---@type halloweenmoonmutable
m.halloweenmoonmutable={}
---@type savedrotation
m.savedrotation={}
---@type canopylightrays
m.canopylightrays={}
---@type piratespawner
m.piratespawner={}
---@type magician
m.magician={}
---@type foodaffinity
m.foodaffinity={}
---@type itemweigher
m.itemweigher={}
---@type finiteuses
m.finiteuses={}
---@type highlightchild
m.highlightchild={}
---@type playeravatardata
m.playeravatardata={}
---@type boatcannon
m.boatcannon={}
---@type oceanfishable
m.oceanfishable={}
---@type grottowaterfallsoundcontroller
m.grottowaterfallsoundcontroller={}
---@type timer
m.timer={}
---@type healthsyncer
m.healthsyncer={}
---@type sandstormwatcher
m.sandstormwatcher={}
---@type fishingnetvisualizer
m.fishingnetvisualizer={}
---@type experiencecollector
m.experiencecollector={}
---@type markable_proxy
m.markable_proxy={}
---@type commander
m.commander={}
---@type workmultiplier
m.workmultiplier={}
---@type meteorshower
m.meteorshower={}
---@type floater
m.floater={}
---@type hudindicatable
m.hudindicatable={}
---@type oceanfishinghook
m.oceanfishinghook={}
---@type spellbook
m.spellbook={}
---@type digester
m.digester={}
---@type hideout
m.hideout={}
---@type skinner_beefalo
m.skinner_beefalo={}
---@type boatleak
m.boatleak={}
---@type replayproxy
m.replayproxy={}
---@type lock
m.lock={}
---@type domesticatable
m.domesticatable={}
---@type minigameparticipator
m.minigameparticipator={}
---@type madsciencelab
m.madsciencelab={}
---@type worker
m.worker={}
---@type aoeweapon_base
m.aoeweapon_base={}
---@type containerproxy
m.containerproxy={}
---@type spectatorcorpse
m.spectatorcorpse={}
---@type fishingnet
m.fishingnet={}
---@type hatchable
m.hatchable={}
---@type boatrotator
m.boatrotator={}
---@type possessedaxe
m.possessedaxe={}
---@type unsaddler
m.unsaddler={}
---@type stageactingprop
m.stageactingprop={}
---@type playerprox
m.playerprox={}
---@type sleepingbag
m.sleepingbag={}
---@type npc_talker
m.npc_talker={}
---@type hideandseekgame
m.hideandseekgame={}
---@type efficientuser
m.efficientuser={}
---@type hitchable
m.hitchable={}
---@type beaverness
m.beaverness={}
---@type steeringwheel
m.steeringwheel={}
---@type deciduoustreeupdater
m.deciduoustreeupdater={}
---@type shard_sinkholes
m.shard_sinkholes={}
---@type hounded
m.hounded={}
---@type pocketwatch
m.pocketwatch={}
---@type yotc_raceprizemanager
m.yotc_raceprizemanager={}
---@type circuitnode
m.circuitnode={}
---@type migrationpetowner
m.migrationpetowner={}
---@type nis
m.nis={}
---@type expertsailor
m.expertsailor={}
---@type klaussackspawner
m.klaussackspawner={}
---@type simplemagicgrower
m.simplemagicgrower={}
---@type sinkholespawner
m.sinkholespawner={}
---@type questowner
m.questowner={}
---@type saltlicker
m.saltlicker={}
---@type ruinsshadelingspawner
m.ruinsshadelingspawner={}
---@type aoeweapon_leap
m.aoeweapon_leap={}
---@type upgrademodule
m.upgrademodule={}
---@type fertilizable
m.fertilizable={}
---@type ambientsound
m.ambientsound={}
---@type ocean
m.ocean={}
---@type groundcreep
m.groundcreep={}
---@type worldreset
m.worldreset={}
---@type yotb_stagemanager
m.yotb_stagemanager={}
---@type insulator
m.insulator={}
---@type mightiness
m.mightiness={}
---@type skinner
m.skinner={}
---@type setbonus
m.setbonus={}
---@type mermkingmanager
m.mermkingmanager={}
---@type miasmamanager
m.miasmamanager={}
---@type worldvoter
m.worldvoter={}
---@type plantregrowth
m.plantregrowth={}
---@type dumbbelllifter
m.dumbbelllifter={}
---@type treegrowthsolution
m.treegrowthsolution={}
---@type playermetrics
m.playermetrics={}
---@type parryweapon
m.parryweapon={}
---@type ambientlighting
m.ambientlighting={}
---@type cookiecutterdrill
m.cookiecutterdrill={}
---@type yotb_skinunlocker
m.yotb_skinunlocker={}
---@type firefx
m.firefx={}
---@type ghostlybond
m.ghostlybond={}
---@type carnivalgamefeedable
m.carnivalgamefeedable={}
---@type incrementalproducer
m.incrementalproducer={}
---@type toadstoolspawner
m.toadstoolspawner={}
---@type equippable
m.equippable={}
---@type inventory
m.inventory={}
---@type sanityaura
m.sanityaura={}
---@type fuel
m.fuel={}
---@type cyclable
m.cyclable={}
---@type sittable
m.sittable={}
---@type strongman
m.strongman={}
---@type mood
m.mood={}
---@type vasedecoration
m.vasedecoration={}
---@type placer
m.placer={}
---@type summoningitem
m.summoningitem={}
---@type spidermutator
m.spidermutator={}
---@type fertilizer
m.fertilizer={}
---@type periodicspawner
m.periodicspawner={}
---@type poppable
m.poppable={}
---@type grottowarmanager
m.grottowarmanager={}
---@type beefalometrics
m.beefalometrics={}
---@type stretcher
m.stretcher={}
---@type leader
m.leader={}
---@type furnituredecor
m.furnituredecor={}
---@type lighttweener
m.lighttweener={}
---@type healthtrigger
m.healthtrigger={}
---@type butterflyspawner
m.butterflyspawner={}
---@type upgrader
m.upgrader={}
---@type moonstormlightningmanager
m.moonstormlightningmanager={}
---@type container
m.container={}
---@type farmtiller
m.farmtiller={}
---@type worldsettings
m.worldsettings={}
---@type preserver
m.preserver={}
---@type recallmark
m.recallmark={}
---@type constructionsite_replica
r.constructionsite={}
---@type combat_replica
r.combat={}
---@type oceanfishingrod_replica
r.oceanfishingrod={}
---@type fishingrod_replica
r.fishingrod={}
---@type sanity_replica
r.sanity={}
---@type equippable_replica
r.equippable={}
---@type inventory_replica
r.inventory={}
---@type stackable_replica
r.stackable={}
---@type inventoryitem_replica
r.inventoryitem={}
---@type moisture_replica
r.moisture={}
---@type follower_replica
r.follower={}
---@type rider_replica
r.rider={}
---@type hunger_replica
r.hunger={}
---@type health_replica
r.health={}
---@type builder_replica
r.builder={}
---@type container_replica
r.container={}
---@type sheltered_replica
r.sheltered={}
---@type writeable_replica
r.writeable={}
---@type named_replica
r.named={}

