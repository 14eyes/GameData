require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q600601Trigger = class("Q600601Trigger", GadgetActorProxy)
Q600601Trigger.defaultAlias = "Q600601Trigger"
local Q6006ClientConfig = require("Quest/Client/Q6006ClientConfig")

local this
local subIDs = Q6006ClientConfig.SubIDs
local datas = Q6006ClientConfig.Datas
local npcs = Q6006ClientConfig.Npcs
local points = Q6006ClientConfig.Points

function Q600601Trigger:OnPostDataPrepare()
    print("Q600601Trigger - OnPostDataPrepare")
    this = self
end

function Q600601Trigger:OnPostComponentPrepare()
    print("Q600601Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(12, 12, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6006)
end

function Q600601Trigger:TriggerIn()
    print("Q600601Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 600601)
    this:DestroySelf()
end

function Q600601Trigger:PreTriggerIn()
    print("Q600601Trigger - PreTriggerIn")
end

function Q600601Trigger:LightUpTriggerIn()
    print("Q600601Trigger - LightUpTriggerIn")
end

function Q600601Trigger:TriggerOut()
    print("Q600601Trigger - TriggerOut")
end

return Q600601Trigger
