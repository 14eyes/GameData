require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411643Trigger = class("Q7411643Trigger", GadgetActorProxy)
Q7411643Trigger.defaultAlias = "Q7411643Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411643Trigger:OnPostDataPrepare()
    print("Q7411643Trigger - OnPostDataPrepare")
    this = self
end

function Q7411643Trigger:OnPostComponentPrepare()
    print("Q7411643Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411643Trigger:TriggerIn()
    print("Q7411643Trigger - TriggerIn")
    actorMgr:GetActor("74116"):RequestInteraction(npcs.Npc21159Data.alias, "", true)
end

function Q7411643Trigger:PreTriggerIn()
    print("Q7411643Trigger - PreTriggerIn")
end

function Q7411643Trigger:LightUpTriggerIn()
    print("Q7411643Trigger - LightUpTriggerIn")
end

function Q7411643Trigger:TriggerOut()
    print("Q7411643Trigger - TriggerOut")
end

return Q7411643Trigger
