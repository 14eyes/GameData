require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400608Trigger = class("Q7400608Trigger", GadgetActorProxy)
Q7400608Trigger.defaultAlias = "Q7400608Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400608Trigger:OnPostDataPrepare()
    print("Q7400608Trigger - OnPostDataPrepare")
    this = self
end

function Q7400608Trigger:OnPostComponentPrepare()
    print("Q7400608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400608Trigger:TriggerIn()
    print("Q7400608Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400608)
    this:DestroySelf()
end

function Q7400608Trigger:PreTriggerIn()
    print("Q7400608Trigger - PreTriggerIn")
end

function Q7400608Trigger:LightUpTriggerIn()
    print("Q7400608Trigger - LightUpTriggerIn")
end

function Q7400608Trigger:TriggerOut()
    print("Q7400608Trigger - TriggerOut")
end

return Q7400608Trigger
