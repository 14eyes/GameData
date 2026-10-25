require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602802Trigger = class("Q7602802Trigger", GadgetActorProxy)
Q7602802Trigger.defaultAlias = "Q7602802Trigger"
local Q76028ClientConfig = require("Quest/Client/Q76028ClientConfig")

local this
local subIDs = Q76028ClientConfig.SubIDs
local datas = Q76028ClientConfig.Datas
local npcs = Q76028ClientConfig.Npcs
local points = Q76028ClientConfig.Points

function Q7602802Trigger:OnPostDataPrepare()
    print("Q7602802Trigger - OnPostDataPrepare")
    this = self
end

function Q7602802Trigger:OnPostComponentPrepare()
    print("Q7602802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(520, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76028)
end

function Q7602802Trigger:TriggerIn()
    print("Q7602802Trigger - TriggerIn")
end

function Q7602802Trigger:PreTriggerIn()
    print("Q7602802Trigger - PreTriggerIn")
end

function Q7602802Trigger:LightUpTriggerIn()
    print("Q7602802Trigger - LightUpTriggerIn")
end

function Q7602802Trigger:TriggerOut()
    print("Q7602802Trigger - TriggerOut")
    actorUtils.FinishQuestID(true, 7602802)
    this:DestroySelf()
end

return Q7602802Trigger
