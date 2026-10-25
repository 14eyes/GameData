require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7723602Trigger = class("Q7723602Trigger", GadgetActorProxy)
Q7723602Trigger.defaultAlias = "Q7723602Trigger"
local Q77236ClientConfig = require("Quest/Client/Q77236ClientConfig")

local this
local subIDs = Q77236ClientConfig.SubIDs
local datas = Q77236ClientConfig.Datas
local npcs = Q77236ClientConfig.Npcs
local points = Q77236ClientConfig.Points

function Q7723602Trigger:OnPostDataPrepare()
    print("Q7723602Trigger - OnPostDataPrepare")
    this = self
end

function Q7723602Trigger:OnPostComponentPrepare()
    print("Q7723602Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77236)
end

function Q7723602Trigger:TriggerIn()
    print("Q7723602Trigger - TriggerIn")
    actorUtils.FinishQuestWithParam({false}, {7723602})
    this:DestroySelf()
end

function Q7723602Trigger:PreTriggerIn()
    print("Q7723602Trigger - PreTriggerIn")
end

function Q7723602Trigger:LightUpTriggerIn()
    print("Q7723602Trigger - LightUpTriggerIn")
end

function Q7723602Trigger:TriggerOut()
    print("Q7723602Trigger - TriggerOut")
end

return Q7723602Trigger
