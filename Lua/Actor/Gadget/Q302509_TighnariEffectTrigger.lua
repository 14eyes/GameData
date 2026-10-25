require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q302509_TighnariEffectTrigger = class("Q302509_TighnariEffectTrigger", GadgetActorProxy)
Q302509_TighnariEffectTrigger.defaultAlias = "Q302509_TighnariEffectTrigger"
local Q3025ClientConfig = require("Quest/Client/Q3025ClientConfig")

local this
local subIDs = Q3025ClientConfig.SubIDs
local npcs = Q3025ClientConfig.Npcs
local datas = Q3025ClientConfig.Datas

function Q302509_TighnariEffectTrigger:OnPostDataPrepare()
    print("[MainId: 3025][Trigger: Q302509_TighnariEffectTrigger] OnPostDataPrepare")
    this = self
end

function Q302509_TighnariEffectTrigger:OnPostComponentPrepare()
    print("[MainId: 3025][Trigger: Q302509_TighnariEffectTrigger] OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q302509_TighnariEffectTrigger:TriggerIn()
    print("[MainId: 3025][Trigger: Q302509_TighnariEffectTrigger] TriggerIn")
    actorMgr:GetActor("3025"):GetQuestNpcActor(npcs.Npc1050Data.alias, 3025):SpawnAttach("Element_StickElectric")
    this:DestroySelf()
end

function Q302509_TighnariEffectTrigger:TriggerOut()
    print("[MainId: 3025][Trigger: Q302509_TighnariEffectTrigger] TriggerOut")
end

return Q302509_TighnariEffectTrigger
