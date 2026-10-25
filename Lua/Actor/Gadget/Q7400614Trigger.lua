require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400614Trigger = class("Q7400614Trigger", GadgetActorProxy)
Q7400614Trigger.defaultAlias = "Q7400614Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400614Trigger:OnPostDataPrepare()
    print("Q7400614Trigger - OnPostDataPrepare")
    this = self
end

function Q7400614Trigger:OnPostComponentPrepare()
    print("Q7400614Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400614Trigger:TriggerIn()
    print("Q7400614Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400614)
    this:DestroySelf()
end

function Q7400614Trigger:PreTriggerIn()
    print("Q7400614Trigger - PreTriggerIn")
end

function Q7400614Trigger:LightUpTriggerIn()
    print("Q7400614Trigger - LightUpTriggerIn")
end

function Q7400614Trigger:TriggerOut()
    print("Q7400614Trigger - TriggerOut")
end

return Q7400614Trigger
