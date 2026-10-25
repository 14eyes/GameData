require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600508Trigger = class("Q7600508Trigger", GadgetActorProxy)
Q7600508Trigger.defaultAlias = "Q7600508Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600508Trigger:OnPostDataPrepare()
    print("Q7600508Trigger - OnPostDataPrepare")
    this = self
end

function Q7600508Trigger:OnPostComponentPrepare()
    print("Q7600508Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600508Trigger:TriggerIn()
    print("Q7600508Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600508)
    this:DestroySelf()
end

function Q7600508Trigger:PreTriggerIn()
    print("Q7600508Trigger - PreTriggerIn")
end

function Q7600508Trigger:LightUpTriggerIn()
    print("Q7600508Trigger - LightUpTriggerIn")
end

function Q7600508Trigger:TriggerOut()
    print("Q7600508Trigger - TriggerOut")
end

return Q7600508Trigger
