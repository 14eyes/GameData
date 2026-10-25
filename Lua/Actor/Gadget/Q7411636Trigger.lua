require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7411636Trigger = class("Q7411636Trigger", GadgetActorProxy)
Q7411636Trigger.defaultAlias = "Q7411636Trigger"
local Q74116ClientConfig = require("Quest/Client/Q74116ClientConfig")

local this
local subIDs = Q74116ClientConfig.SubIDs
local datas = Q74116ClientConfig.Datas
local npcs = Q74116ClientConfig.Npcs
local points = Q74116ClientConfig.Points

function Q7411636Trigger:OnPostDataPrepare()
    print("Q7411636Trigger - OnPostDataPrepare")
    this = self
end

function Q7411636Trigger:OnPostComponentPrepare()
    print("Q7411636Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74116)
end

function Q7411636Trigger:TriggerIn()
    print("Q7411636Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7411636)
    this:DestroySelf()
end

function Q7411636Trigger:PreTriggerIn()
    print("Q7411636Trigger - PreTriggerIn")
end

function Q7411636Trigger:LightUpTriggerIn()
    print("Q7411636Trigger - LightUpTriggerIn")
end

function Q7411636Trigger:TriggerOut()
    print("Q7411636Trigger - TriggerOut")
end

return Q7411636Trigger
