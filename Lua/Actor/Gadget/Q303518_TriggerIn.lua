require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q303518_TriggerIn = class("Q303518_TriggerIn", GadgetActorProxy)
Q303518_TriggerIn.defaultAlias = "Q303518_TriggerIn"
local Q3035ClientConfig = require("Quest/Client/Q3035ClientConfig")

local this
local subIDs = Q3035ClientConfig.SubIDs
local datas = Q3035ClientConfig.Datas
local npcs = Q3035ClientConfig.Npcs
local points = Q3035ClientConfig.Points

function Q303518_TriggerIn:OnPostDataPrepare()
    print("Q303518_TriggerIn - OnPostDataPrepare")
    this = self
end

function Q303518_TriggerIn:OnPostComponentPrepare()
    print("Q303518_TriggerIn - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(25, 30, 60, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 3035)
end

function Q303518_TriggerIn:TriggerIn()
    print("Q303518_TriggerIn - TriggerIn")
    actorMgr:GetActor("3035"):CreateQuestNpcById(303518, npcs.Npc16565.id, 0, false, 0)
    actorMgr:GetActor("3035"):RequestInteraction(npcs.Npc16565.alias, "", true)
    this:DestroySelf()
end

function Q303518_TriggerIn:PreTriggerIn()
    print("Q303518_TriggerIn - PreTriggerIn")
end

function Q303518_TriggerIn:LightUpTriggerIn()
    print("Q303518_TriggerIn - LightUpTriggerIn")
end

function Q303518_TriggerIn:TriggerOut()
    print("Q303518_TriggerIn - TriggerOut")
end

return Q303518_TriggerIn
