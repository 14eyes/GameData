require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411628Trigger = class("Q7411628Trigger", GadgetActorProxy)
Q7411628Trigger.defaultAlias = "Q7411628Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411628Trigger:OnPostDataPrepare()
    print("Q7411628Trigger - OnPostDataPrepare")
    this = self
end

function Q7411628Trigger:OnPostComponentPrepare()
    print("Q7411628Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411628Trigger:TriggerIn()
    print("Q7411628Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411628)
    this:DestroySelf()
end

function Q7411628Trigger:PreTriggerIn()
    print("Q7411628Trigger - PreTriggerIn")
end

function Q7411628Trigger:LightUpTriggerIn()
    print("Q7411628Trigger - LightUpTriggerIn")
end

function Q7411628Trigger:TriggerOut()
    print("Q7411628Trigger - TriggerOut")
end

return Q7411628Trigger
