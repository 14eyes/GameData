require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504407Trigger = class("Q1504407Trigger", GadgetActorProxy)
Q1504407Trigger.defaultAlias = "Q1504407Trigger"
local Q15044ClientConfig = require("Quest/Client/Q15044ClientConfig")

local this
local subIDs = Q15044ClientConfig.SubIDs
local datas = Q15044ClientConfig.Datas
local npcs = Q15044ClientConfig.Npcs
local points = Q15044ClientConfig.Points

function Q1504407Trigger:OnPostDataPrepare()
    print("Q1504407Trigger - OnPostDataPrepare")
    this = self
end

function Q1504407Trigger:OnPostComponentPrepare()
    print("Q1504407Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15044)
end

function Q1504407Trigger:TriggerIn()
    print("Q1504407Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504407)
    this:DestroySelf()
end

function Q1504407Trigger:PreTriggerIn()
    print("Q1504407Trigger - PreTriggerIn")
end

function Q1504407Trigger:LightUpTriggerIn()
    print("Q1504407Trigger - LightUpTriggerIn")
end

function Q1504407Trigger:TriggerOut()
    print("Q1504407Trigger - TriggerOut")
end

return Q1504407Trigger
