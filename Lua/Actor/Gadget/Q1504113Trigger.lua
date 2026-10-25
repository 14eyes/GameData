require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504113Trigger = class("Q1504113Trigger", GadgetActorProxy)
Q1504113Trigger.defaultAlias = "Q1504113Trigger"
local Q15041ClientConfig = require("Quest/Client/Q15041ClientConfig")

local this
local subIDs = Q15041ClientConfig.SubIDs
local datas = Q15041ClientConfig.Datas
local npcs = Q15041ClientConfig.Npcs
local points = Q15041ClientConfig.Points

function Q1504113Trigger:OnPostDataPrepare()
    print("Q1504113Trigger - OnPostDataPrepare")
    this = self
end

function Q1504113Trigger:OnPostComponentPrepare()
    print("Q1504113Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15.616646, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15041)
end

function Q1504113Trigger:TriggerIn()
    print("Q1504113Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1504113)
    this:DestroySelf()
end

function Q1504113Trigger:PreTriggerIn()
    print("Q1504113Trigger - PreTriggerIn")
end

function Q1504113Trigger:LightUpTriggerIn()
    print("Q1504113Trigger - LightUpTriggerIn")
end

function Q1504113Trigger:TriggerOut()
    print("Q1504113Trigger - TriggerOut")
end

return Q1504113Trigger
