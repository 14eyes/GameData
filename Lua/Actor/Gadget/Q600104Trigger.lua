require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600104Trigger = class("Q600104Trigger", GadgetActorProxy)
Q600104Trigger.defaultAlias = "Q600104Trigger"
local Q6001ClientConfig = require("Quest/Client/Q6001ClientConfig")

local this
local subIDs = Q6001ClientConfig.SubIDs
local datas = Q6001ClientConfig.Datas
local npcs = Q6001ClientConfig.Npcs
local points = Q6001ClientConfig.Points

function Q600104Trigger:OnPostDataPrepare()
    print("Q600104Trigger - OnPostDataPrepare")
    this = self
end

function Q600104Trigger:OnPostComponentPrepare()
    print("Q600104Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6001)
end

function Q600104Trigger:TriggerIn()
    print("Q600104Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600104)
    this:DestroySelf()
end

function Q600104Trigger:PreTriggerIn()
    print("Q600104Trigger - PreTriggerIn")
end

function Q600104Trigger:LightUpTriggerIn()
    print("Q600104Trigger - LightUpTriggerIn")
end

function Q600104Trigger:TriggerOut()
    print("Q600104Trigger - TriggerOut")
end

return Q600104Trigger
