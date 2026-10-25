require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7400606Trigger = class("Q7400606Trigger", GadgetActorProxy)
Q7400606Trigger.defaultAlias = "Q7400606Trigger"
local Q74006ClientConfig = require("Quest/Client/Q74006ClientConfig")

local this
local subIDs = Q74006ClientConfig.SubIDs
local datas = Q74006ClientConfig.Datas
local npcs = Q74006ClientConfig.Npcs
local points = Q74006ClientConfig.Points

function Q7400606Trigger:OnPostDataPrepare()
    print("Q7400606Trigger - OnPostDataPrepare")
    this = self
end

function Q7400606Trigger:OnPostComponentPrepare()
    print("Q7400606Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74006)
end

function Q7400606Trigger:TriggerIn()
    print("Q7400606Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7400606)
    this:DestroySelf()
end

function Q7400606Trigger:PreTriggerIn()
    print("Q7400606Trigger - PreTriggerIn")
end

function Q7400606Trigger:LightUpTriggerIn()
    print("Q7400606Trigger - LightUpTriggerIn")
end

function Q7400606Trigger:TriggerOut()
    print("Q7400606Trigger - TriggerOut")
end

return Q7400606Trigger
