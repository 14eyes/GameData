require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7613207Trigger = class("Q7613207Trigger", GadgetActorProxy)
Q7613207Trigger.defaultAlias = "Q7613207Trigger"
local Q76132ClientConfig = require("Quest/Client/Q76132ClientConfig")

local this
local subIDs = Q76132ClientConfig.SubIDs
local datas = Q76132ClientConfig.Datas
local npcs = Q76132ClientConfig.Npcs
local points = Q76132ClientConfig.Points

function Q7613207Trigger:OnPostDataPrepare()
    print("Q7613207Trigger - OnPostDataPrepare")
    this = self
end

function Q7613207Trigger:OnPostComponentPrepare()
    print("Q7613207Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(134.16869, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76132)
end

function Q7613207Trigger:TriggerIn()
    print("Q7613207Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7613207)
    this:DestroySelf()
end

function Q7613207Trigger:PreTriggerIn()
    print("Q7613207Trigger - PreTriggerIn")
end

function Q7613207Trigger:LightUpTriggerIn()
    print("Q7613207Trigger - LightUpTriggerIn")
end

function Q7613207Trigger:TriggerOut()
    print("Q7613207Trigger - TriggerOut")
end

return Q7613207Trigger
