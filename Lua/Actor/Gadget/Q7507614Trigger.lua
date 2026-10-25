require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7507614Trigger = class("Q7507614Trigger", GadgetActorProxy)
Q7507614Trigger.defaultAlias = "Q7507614Trigger"
local Q75076ClientConfig = require("Quest/Client/Q75076ClientConfig")

local this
local subIDs = Q75076ClientConfig.SubIDs
local datas = Q75076ClientConfig.Datas
local npcs = Q75076ClientConfig.Npcs
local points = Q75076ClientConfig.Points

function Q7507614Trigger:OnPostDataPrepare()
    print("Q7507614Trigger - OnPostDataPrepare")
    this = self
end

function Q7507614Trigger:OnPostComponentPrepare()
    print("Q7507614Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(450, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75076)
end

function Q7507614Trigger:TriggerIn()
    print("Q7507614Trigger - TriggerIn")
end

function Q7507614Trigger:PreTriggerIn()
    print("Q7507614Trigger - PreTriggerIn")
end

function Q7507614Trigger:LightUpTriggerIn()
    print("Q7507614Trigger - LightUpTriggerIn")
end

function Q7507614Trigger:TriggerOut()
    print("Q7507614Trigger - TriggerOut")
    actorUtils.FinishQuestID(false, 7507614)
    this:DestroySelf()
end

return Q7507614Trigger
