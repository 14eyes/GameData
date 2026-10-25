require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601111Trigger = class("Q7601111Trigger", GadgetActorProxy)
Q7601111Trigger.defaultAlias = "Q7601111Trigger"
local Q76011ClientConfig = require("Quest/Client/Q76011ClientConfig")

local this
local subIDs = Q76011ClientConfig.SubIDs
local datas = Q76011ClientConfig.Datas
local npcs = Q76011ClientConfig.Npcs
local points = Q76011ClientConfig.Points

function Q7601111Trigger:OnPostDataPrepare()
    print("Q7601111Trigger - OnPostDataPrepare")
    this = self
end

function Q7601111Trigger:OnPostComponentPrepare()
    print("Q7601111Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76011)
end

function Q7601111Trigger:TriggerIn()
    print("Q7601111Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601111)
    this:DestroySelf()
end

function Q7601111Trigger:PreTriggerIn()
    print("Q7601111Trigger - PreTriggerIn")
end

function Q7601111Trigger:LightUpTriggerIn()
    print("Q7601111Trigger - LightUpTriggerIn")
end

function Q7601111Trigger:TriggerOut()
    print("Q7601111Trigger - TriggerOut")
end

return Q7601111Trigger
