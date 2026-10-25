require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1403605Trigger = class("Q1403605Trigger", GadgetActorProxy)
Q1403605Trigger.defaultAlias = "Q1403605Trigger"
local Q14036ClientConfig = require("Quest/Client/Q14036ClientConfig")

local this
local subIDs = Q14036ClientConfig.SubIDs
local datas = Q14036ClientConfig.Datas
local points = Q14036ClientConfig.Points

function Q1403605Trigger:OnPostDataPrepare()
    print("Q1403605Trigger - OnPostDataPrepare")
    this = self
end

function Q1403605Trigger:OnPostComponentPrepare()
    print("Q1403605Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14036)
end

function Q1403605Trigger:TriggerIn()
    print("Q1403605Trigger - TriggerIn")
    actorUtils.FinishQuestID(true, 1403605)
    this:DestroySelf()
end

function Q1403605Trigger:PreTriggerIn()
    print("Q1403605Trigger - PreTriggerIn")
end

function Q1403605Trigger:LightUpTriggerIn()
    print("Q1403605Trigger - LightUpTriggerIn")
end

function Q1403605Trigger:TriggerOut()
    print("Q1403605Trigger - TriggerOut")
end

return Q1403605Trigger
