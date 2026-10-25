require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411601Trigger = class("Q7411601Trigger", GadgetActorProxy)
Q7411601Trigger.defaultAlias = "Q7411601Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411601Trigger:OnPostDataPrepare()
    print("Q7411601Trigger - OnPostDataPrepare")
    this = self
end

function Q7411601Trigger:OnPostComponentPrepare()
    print("Q7411601Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411601Trigger:TriggerIn()
    print("Q7411601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411601)
    this:DestroySelf()
end

function Q7411601Trigger:PreTriggerIn()
    print("Q7411601Trigger - PreTriggerIn")
end

function Q7411601Trigger:LightUpTriggerIn()
    print("Q7411601Trigger - LightUpTriggerIn")
end

function Q7411601Trigger:TriggerOut()
    print("Q7411601Trigger - TriggerOut")
end

return Q7411601Trigger
