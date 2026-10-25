require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7601810Trigger = class("Q7601810Trigger", GadgetActorProxy)
Q7601810Trigger.defaultAlias = "Q7601810Trigger"
local Q76018ClientConfig = require("Quest/Client/Q76018ClientConfig")

local this
local subIDs = Q76018ClientConfig.SubIDs
local datas = Q76018ClientConfig.Datas
local npcs = Q76018ClientConfig.Npcs
local points = Q76018ClientConfig.Points

function Q7601810Trigger:OnPostDataPrepare()
    print("Q7601810Trigger - OnPostDataPrepare")
    this = self
end

function Q7601810Trigger:OnPostComponentPrepare()
    print("Q7601810Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76018)
end

function Q7601810Trigger:TriggerIn()
    print("Q7601810Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7601810)
    this:DestroySelf()
end

function Q7601810Trigger:PreTriggerIn()
    print("Q7601810Trigger - PreTriggerIn")
end

function Q7601810Trigger:LightUpTriggerIn()
    print("Q7601810Trigger - LightUpTriggerIn")
end

function Q7601810Trigger:TriggerOut()
    print("Q7601810Trigger - TriggerOut")
end

return Q7601810Trigger
