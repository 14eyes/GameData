require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609804Trigger = class("Q7609804Trigger", GadgetActorProxy)
Q7609804Trigger.defaultAlias = "Q7609804Trigger"
local Q76098ClientConfig = require("Quest/Client/Q76098ClientConfig")

local this
local subIDs = Q76098ClientConfig.SubIDs
local datas = Q76098ClientConfig.Datas
local npcs = Q76098ClientConfig.Npcs
local points = Q76098ClientConfig.Points

function Q7609804Trigger:OnPostDataPrepare()
    print("Q7609804Trigger - OnPostDataPrepare")
    this = self
end

function Q7609804Trigger:OnPostComponentPrepare()
    print("Q7609804Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76098)
end

function Q7609804Trigger:TriggerIn()
    print("Q7609804Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609804)
    this:DestroySelf()
end

function Q7609804Trigger:PreTriggerIn()
    print("Q7609804Trigger - PreTriggerIn")
end

function Q7609804Trigger:LightUpTriggerIn()
    print("Q7609804Trigger - LightUpTriggerIn")
end

function Q7609804Trigger:TriggerOut()
    print("Q7609804Trigger - TriggerOut")
end

return Q7609804Trigger
