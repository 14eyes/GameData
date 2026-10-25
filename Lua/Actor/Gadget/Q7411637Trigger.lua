require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411637Trigger = class("Q7411637Trigger", GadgetActorProxy)
Q7411637Trigger.defaultAlias = "Q7411637Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411637Trigger:OnPostDataPrepare()
    print("Q7411637Trigger - OnPostDataPrepare")
    this = self
end

function Q7411637Trigger:OnPostComponentPrepare()
    print("Q7411637Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411637Trigger:TriggerIn()
    print("Q7411637Trigger - TriggerIn")
    actorMgr:GetActor("74116"):RequestInteraction(npcs.Npc21158Data.alias)
end

function Q7411637Trigger:PreTriggerIn()
    print("Q7411637Trigger - PreTriggerIn")
end

function Q7411637Trigger:LightUpTriggerIn()
    print("Q7411637Trigger - LightUpTriggerIn")
end

function Q7411637Trigger:TriggerOut()
    print("Q7411637Trigger - TriggerOut")
end

return Q7411637Trigger
