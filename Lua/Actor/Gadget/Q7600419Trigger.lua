require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600419Trigger = class("Q7600419Trigger", GadgetActorProxy)
Q7600419Trigger.defaultAlias = "Q7600419Trigger"
local Q76004ClientConfig = require("Quest/Client/Q76004ClientConfig")

local this
local subIDs = Q76004ClientConfig.SubIDs
local datas = Q76004ClientConfig.Datas
local npcs = Q76004ClientConfig.Npcs
local points = Q76004ClientConfig.Points

function Q7600419Trigger:OnPostDataPrepare()
    print("Q7600419Trigger - OnPostDataPrepare")
    this = self
end

function Q7600419Trigger:OnPostComponentPrepare()
    print("Q7600419Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(10, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76004)
end

function Q7600419Trigger:TriggerIn()
    print("Q7600419Trigger - TriggerIn")
    actorMgr:GetActor("76004"):CreateQuestNpc(quest, npcs.Npc21828.id, 0, false, 0)
    actorMgr:GetActor("76004"):RequestInteraction(npcs.Npc21828.alias, "", true)
    this:DestroySelf()
end

function Q7600419Trigger:PreTriggerIn()
    print("Q7600419Trigger - PreTriggerIn")
end

function Q7600419Trigger:LightUpTriggerIn()
    print("Q7600419Trigger - LightUpTriggerIn")
end

function Q7600419Trigger:TriggerOut()
    print("Q7600419Trigger - TriggerOut")
end

return Q7600419Trigger
