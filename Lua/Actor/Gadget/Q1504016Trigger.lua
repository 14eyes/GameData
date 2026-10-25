require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504016Trigger = class("Q1504016Trigger", GadgetActorProxy)
Q1504016Trigger.defaultAlias = "Q1504016Trigger"
local Q15040ClientConfig = require("Quest/Client/Q15040ClientConfig")

local this
local subIDs = Q15040ClientConfig.SubIDs
local datas = Q15040ClientConfig.Datas
local npcs = Q15040ClientConfig.Npcs
local points = Q15040ClientConfig.Points

function Q1504016Trigger:OnPostDataPrepare()
    print("Q1504016Trigger - OnPostDataPrepare")
    this = self
end

function Q1504016Trigger:OnPostComponentPrepare()
    print("Q1504016Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(9, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15040)
end

function Q1504016Trigger:TriggerIn()
    print("Q1504016Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504016)
    this:DestroySelf()
end

function Q1504016Trigger:PreTriggerIn()
    print("Q1504016Trigger - PreTriggerIn")
end

function Q1504016Trigger:LightUpTriggerIn()
    print("Q1504016Trigger - LightUpTriggerIn")
end

function Q1504016Trigger:TriggerOut()
    print("Q1504016Trigger - TriggerOut")
end

return Q1504016Trigger
