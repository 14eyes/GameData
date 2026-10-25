require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507609Trigger = class("Q7507609Trigger", GadgetActorProxy)
Q7507609Trigger.defaultAlias = "Q7507609Trigger"
local Q75076ClientConfig = require("Quest/Client/Q75076ClientConfig")

local this
local subIDs = Q75076ClientConfig.SubIDs
local datas = Q75076ClientConfig.Datas
local npcs = Q75076ClientConfig.Npcs
local points = Q75076ClientConfig.Points

function Q7507609Trigger:OnPostDataPrepare()
    print("Q7507609Trigger - OnPostDataPrepare")
    this = self
end

function Q7507609Trigger:OnPostComponentPrepare()
    print("Q7507609Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(90, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75076)
end

function Q7507609Trigger:TriggerIn()
    print("Q7507609Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7507609)
    this:DestroySelf()
end

function Q7507609Trigger:PreTriggerIn()
    print("Q7507609Trigger - PreTriggerIn")
end

function Q7507609Trigger:LightUpTriggerIn()
    print("Q7507609Trigger - LightUpTriggerIn")
end

function Q7507609Trigger:TriggerOut()
    print("Q7507609Trigger - TriggerOut")
end

return Q7507609Trigger
