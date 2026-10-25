require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400610Trigger = class("Q7400610Trigger", GadgetActorProxy)
Q7400610Trigger.defaultAlias = "Q7400610Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400610Trigger:OnPostDataPrepare()
    print("Q7400610Trigger - OnPostDataPrepare")
    this = self
end

function Q7400610Trigger:OnPostComponentPrepare()
    print("Q7400610Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400610Trigger:TriggerIn()
    print("Q7400610Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400610)
    this:DestroySelf()
end

function Q7400610Trigger:PreTriggerIn()
    print("Q7400610Trigger - PreTriggerIn")
end

function Q7400610Trigger:LightUpTriggerIn()
    print("Q7400610Trigger - LightUpTriggerIn")
end

function Q7400610Trigger:TriggerOut()
    print("Q7400610Trigger - TriggerOut")
end

return Q7400610Trigger
