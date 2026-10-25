require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400607Trigger = class("Q7400607Trigger", GadgetActorProxy)
Q7400607Trigger.defaultAlias = "Q7400607Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400607Trigger:OnPostDataPrepare()
    print("Q7400607Trigger - OnPostDataPrepare")
    this = self
end

function Q7400607Trigger:OnPostComponentPrepare()
    print("Q7400607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400607Trigger:TriggerIn()
    print("Q7400607Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400607)
    this:DestroySelf()
end

function Q7400607Trigger:PreTriggerIn()
    print("Q7400607Trigger - PreTriggerIn")
end

function Q7400607Trigger:LightUpTriggerIn()
    print("Q7400607Trigger - LightUpTriggerIn")
end

function Q7400607Trigger:TriggerOut()
    print("Q7400607Trigger - TriggerOut")
end

return Q7400607Trigger
