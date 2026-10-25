require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1404502Trigger = class("Q1404502Trigger", GadgetActorProxy)
Q1404502Trigger.defaultAlias = "Q1404502Trigger"
local Q14045ClientConfig = require("Quest/Client/Q14045ClientConfig")

local this
local subIDs = Q14045ClientConfig.SubIDs
local datas = Q14045ClientConfig.Datas
local npcs = Q14045ClientConfig.Npcs
local points = Q14045ClientConfig.Points

function Q1404502Trigger:OnPostDataPrepare()
    print("Q1404502Trigger - OnPostDataPrepare")
    this = self
end

function Q1404502Trigger:OnPostComponentPrepare()
    print("Q1404502Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14045)
end

function Q1404502Trigger:TriggerIn()
    print("Q1404502Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1404519)
    this:DestroySelf()
end

function Q1404502Trigger:PreTriggerIn()
    print("Q1404502Trigger - PreTriggerIn")
end

function Q1404502Trigger:LightUpTriggerIn()
    print("Q1404502Trigger - LightUpTriggerIn")
end

function Q1404502Trigger:TriggerOut()
    print("Q1404502Trigger - TriggerOut")
end

return Q1404502Trigger
