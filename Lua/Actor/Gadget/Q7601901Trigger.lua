require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601901Trigger = class("Q7601901Trigger", GadgetActorProxy)
Q7601901Trigger.defaultAlias = "Q7601901Trigger"
local Q76019ClientConfig = require("Quest/Client/Q76019ClientConfig")

local this
local subIDs = Q76019ClientConfig.SubIDs
local datas = Q76019ClientConfig.Datas
local npcs = Q76019ClientConfig.Npcs
local points = Q76019ClientConfig.Points

function Q7601901Trigger:OnPostDataPrepare()
    print("Q7601901Trigger - OnPostDataPrepare")
    this = self
end

function Q7601901Trigger:OnPostComponentPrepare()
    print("Q7601901Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(30, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76019)
end

function Q7601901Trigger:TriggerIn()
    print("Q7601901Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601904)
    this:DestroySelf()
end

function Q7601901Trigger:PreTriggerIn()
    print("Q7601901Trigger - PreTriggerIn")
end

function Q7601901Trigger:LightUpTriggerIn()
    print("Q7601901Trigger - LightUpTriggerIn")
end

function Q7601901Trigger:TriggerOut()
    print("Q7601901Trigger - TriggerOut")
end

return Q7601901Trigger
