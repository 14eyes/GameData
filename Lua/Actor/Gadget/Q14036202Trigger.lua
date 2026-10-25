require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q14036202Trigger = class("Q14036202Trigger", GadgetActorProxy)
Q14036202Trigger.defaultAlias = "Q14036202Trigger"
local Q14036ClientConfig = require("Quest/Client/Q14036ClientConfig")

local this
local subIDs = Q14036ClientConfig.SubIDs
local datas = Q14036ClientConfig.Datas
local points = Q14036ClientConfig.Points

function Q14036202Trigger:OnPostDataPrepare()
    print("Q14036202Trigger - OnPostDataPrepare")
    this = self
end

function Q14036202Trigger:OnPostComponentPrepare()
    print("Q14036202Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14036)
end

function Q14036202Trigger:TriggerIn()
    print("Q14036202Trigger - TriggerIn")
    actorUtils.FinishQuestID(true, 1403602)
    this:DestroySelf()
end

function Q14036202Trigger:PreTriggerIn()
    print("Q14036202Trigger - PreTriggerIn")
end

function Q14036202Trigger:LightUpTriggerIn()
    print("Q14036202Trigger - LightUpTriggerIn")
end

function Q14036202Trigger:TriggerOut()
    print("Q14036202Trigger - TriggerOut")
end

return Q14036202Trigger
