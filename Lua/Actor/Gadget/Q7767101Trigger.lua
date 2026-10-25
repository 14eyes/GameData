require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7767101Trigger = class("Q7767101Trigger", GadgetActorProxy)
Q7767101Trigger.defaultAlias = "Q7767101Trigger"
local Q77671ClientConfig = require("Quest/Client/Q77671ClientConfig")

local this
local subIDs = Q77671ClientConfig.SubIDs
local datas = Q77671ClientConfig.Datas
local npcs = Q77671ClientConfig.Npcs
local points = Q77671ClientConfig.Points

function Q7767101Trigger:OnPostDataPrepare()
    print("Q7767101Trigger - OnPostDataPrepare")
    this = self
end

function Q7767101Trigger:OnPostComponentPrepare()
    print("Q7767101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77671)
end

function Q7767101Trigger:TriggerIn()
    print("Q7767101Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7767101})
    this:DestroySelf()
end

function Q7767101Trigger:PreTriggerIn()
    print("Q7767101Trigger - PreTriggerIn")
end

function Q7767101Trigger:LightUpTriggerIn()
    print("Q7767101Trigger - LightUpTriggerIn")
end

function Q7767101Trigger:TriggerOut()
    print("Q7767101Trigger - TriggerOut")
end

return Q7767101Trigger
