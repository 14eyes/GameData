require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609802Trigger = class("Q7609802Trigger", GadgetActorProxy)
Q7609802Trigger.defaultAlias = "Q7609802Trigger"
local Q76098ClientConfig = require("Quest/Client/Q76098ClientConfig")

local this
local subIDs = Q76098ClientConfig.SubIDs
local datas = Q76098ClientConfig.Datas
local npcs = Q76098ClientConfig.Npcs
local points = Q76098ClientConfig.Points

function Q7609802Trigger:OnPostDataPrepare()
    print("Q7609802Trigger - OnPostDataPrepare")
    this = self
end

function Q7609802Trigger:OnPostComponentPrepare()
    print("Q7609802Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76098)
end

function Q7609802Trigger:TriggerIn()
    print("Q7609802Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609802)
    this:DestroySelf()
end

function Q7609802Trigger:PreTriggerIn()
    print("Q7609802Trigger - PreTriggerIn")
end

function Q7609802Trigger:LightUpTriggerIn()
    print("Q7609802Trigger - LightUpTriggerIn")
end

function Q7609802Trigger:TriggerOut()
    print("Q7609802Trigger - TriggerOut")
end

return Q7609802Trigger
