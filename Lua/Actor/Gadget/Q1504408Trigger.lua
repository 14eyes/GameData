require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504408Trigger = class("Q1504408Trigger", GadgetActorProxy)
Q1504408Trigger.defaultAlias = "Q1504408Trigger"
local Q15044ClientConfig = require("Quest/Client/Q15044ClientConfig")

local this
local subIDs = Q15044ClientConfig.SubIDs
local datas = Q15044ClientConfig.Datas
local npcs = Q15044ClientConfig.Npcs
local points = Q15044ClientConfig.Points

function Q1504408Trigger:OnPostDataPrepare()
    print("Q1504408Trigger - OnPostDataPrepare")
    this = self
end

function Q1504408Trigger:OnPostComponentPrepare()
    print("Q1504408Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15044)
end

function Q1504408Trigger:TriggerIn()
    print("Q1504408Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504408)
    this:DestroySelf()
end

function Q1504408Trigger:PreTriggerIn()
    print("Q1504408Trigger - PreTriggerIn")
end

function Q1504408Trigger:LightUpTriggerIn()
    print("Q1504408Trigger - LightUpTriggerIn")
end

function Q1504408Trigger:TriggerOut()
    print("Q1504408Trigger - TriggerOut")
end

return Q1504408Trigger
