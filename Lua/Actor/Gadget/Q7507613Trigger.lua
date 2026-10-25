require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507613Trigger = class("Q7507613Trigger", GadgetActorProxy)
Q7507613Trigger.defaultAlias = "Q7507613Trigger"
local Q75076ClientConfig = require("Quest/Client/Q75076ClientConfig")

local this
local subIDs = Q75076ClientConfig.SubIDs
local datas = Q75076ClientConfig.Datas
local npcs = Q75076ClientConfig.Npcs
local points = Q75076ClientConfig.Points

function Q7507613Trigger:OnPostDataPrepare()
    print("Q7507613Trigger - OnPostDataPrepare")
    this = self
end

function Q7507613Trigger:OnPostComponentPrepare()
    print("Q7507613Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75076)
end

function Q7507613Trigger:TriggerIn()
    print("Q7507613Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7507613)
    this:DestroySelf()
end

function Q7507613Trigger:PreTriggerIn()
    print("Q7507613Trigger - PreTriggerIn")
end

function Q7507613Trigger:LightUpTriggerIn()
    print("Q7507613Trigger - LightUpTriggerIn")
end

function Q7507613Trigger:TriggerOut()
    print("Q7507613Trigger - TriggerOut")
end

return Q7507613Trigger
