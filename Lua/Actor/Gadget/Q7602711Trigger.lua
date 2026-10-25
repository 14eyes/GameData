require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602711Trigger = class("Q7602711Trigger", GadgetActorProxy)
Q7602711Trigger.defaultAlias = "Q7602711Trigger"
local Q76027ClientConfig = require("Quest/Client/Q76027ClientConfig")

local this
local subIDs = Q76027ClientConfig.SubIDs
local datas = Q76027ClientConfig.Datas
local npcs = Q76027ClientConfig.Npcs
local points = Q76027ClientConfig.Points

function Q7602711Trigger:OnPostDataPrepare()
    print("Q7602711Trigger - OnPostDataPrepare")
    this = self
end

function Q7602711Trigger:OnPostComponentPrepare()
    print("Q7602711Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76027)
end

function Q7602711Trigger:TriggerIn()
    print("Q7602711Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7602711)
    this:DestroySelf()
end

function Q7602711Trigger:PreTriggerIn()
    print("Q7602711Trigger - PreTriggerIn")
end

function Q7602711Trigger:LightUpTriggerIn()
    print("Q7602711Trigger - LightUpTriggerIn")
end

function Q7602711Trigger:TriggerOut()
    print("Q7602711Trigger - TriggerOut")
end

return Q7602711Trigger
