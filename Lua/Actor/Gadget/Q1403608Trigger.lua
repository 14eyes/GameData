require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403608Trigger = class("Q1403608Trigger", GadgetActorProxy)
Q1403608Trigger.defaultAlias = "Q1403608Trigger"
local Q14036ClientConfig = require("Quest/Client/Q14036ClientConfig")

local this
local subIDs = Q14036ClientConfig.SubIDs
local datas = Q14036ClientConfig.Datas
local points = Q14036ClientConfig.Points

function Q1403608Trigger:OnPostDataPrepare()
    print("Q1403608Trigger - OnPostDataPrepare")
    this = self
end

function Q1403608Trigger:OnPostComponentPrepare()
    print("Q1403608Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14036)
end

function Q1403608Trigger:TriggerIn()
    print("Q1403608Trigger - TriggerIn")
    actorUtils.FinishQuestID(true, 1403608)
    this:DestroySelf()
end

function Q1403608Trigger:PreTriggerIn()
    print("Q1403608Trigger - PreTriggerIn")
end

function Q1403608Trigger:LightUpTriggerIn()
    print("Q1403608Trigger - LightUpTriggerIn")
end

function Q1403608Trigger:TriggerOut()
    print("Q1403608Trigger - TriggerOut")
end

return Q1403608Trigger
