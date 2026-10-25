require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411611Trigger = class("Q7411611Trigger", GadgetActorProxy)
Q7411611Trigger.defaultAlias = "Q7411611Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411611Trigger:OnPostDataPrepare()
    print("Q7411611Trigger - OnPostDataPrepare")
    this = self
end

function Q7411611Trigger:OnPostComponentPrepare()
    print("Q7411611Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411611Trigger:TriggerIn()
    print("Q7411611Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411611)
end

function Q7411611Trigger:PreTriggerIn()
    print("Q7411611Trigger - PreTriggerIn")
end

function Q7411611Trigger:LightUpTriggerIn()
    print("Q7411611Trigger - LightUpTriggerIn")
end

function Q7411611Trigger:TriggerOut()
    print("Q7411611Trigger - TriggerOut")
end

return Q7411611Trigger
