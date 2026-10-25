require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7524010Trigger = class("Q7524010Trigger", GadgetActorProxy)
Q7524010Trigger.defaultAlias = "Q7524010Trigger"
local Q75240ClientConfig = require("Quest/Client/Q75240ClientConfig")

local this
local subIDs = Q75240ClientConfig.SubIDs
local datas = Q75240ClientConfig.Datas
local npcs = Q75240ClientConfig.Npcs
local points = Q75240ClientConfig.Points

function Q7524010Trigger:OnPostDataPrepare()
    print("Q7524010Trigger - OnPostDataPrepare")
    this = self
end

function Q7524010Trigger:OnPostComponentPrepare()
    print("Q7524010Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75240)
end

function Q7524010Trigger:TriggerIn()
    print("Q7524010Trigger - TriggerIn")
    actorMgr:GetActor("75240"):RequestInteraction(npcs.Npc21961.alias, "", true)
end

function Q7524010Trigger:PreTriggerIn()
    print("Q7524010Trigger - PreTriggerIn")
end

function Q7524010Trigger:LightUpTriggerIn()
    print("Q7524010Trigger - LightUpTriggerIn")
end

function Q7524010Trigger:TriggerOut()
    print("Q7524010Trigger - TriggerOut")
end

return Q7524010Trigger
