require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303517_TriggerIn = class("Q303517_TriggerIn", GadgetActorProxy)
Q303517_TriggerIn.defaultAlias = "Q303517_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303517_TriggerIn:OnPostDataPrepare()
    print("Q303517_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303517_TriggerIn:OnPostComponentPrepare()
    print("Q303517_TriggerIn - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303517_TriggerIn:TriggerIn()
    print("Q303517_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):CreateQuestNpcById(303517, npcs.Npc16565.id, 0, false, 0)
    actorMgr:GetActor("3035"):RequestInteraction(npcs.Npc16565.alias, "", true)
    this:DestroySelf()
end

function Q303517_TriggerIn:PreTriggerIn()
    print("Q303517_TriggerIn - PreTriggerIn")
end

function Q303517_TriggerIn:LightUpTriggerIn()
    print("Q303517_TriggerIn - LightUpTriggerIn")
end

function Q303517_TriggerIn:TriggerOut()
    print("Q303517_TriggerIn - TriggerOut")
end

return Q303517_TriggerIn
