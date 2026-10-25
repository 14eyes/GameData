require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600518Trigger = class("Q7600518Trigger", GadgetActorProxy)
Q7600518Trigger.defaultAlias = "Q7600518Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600518Trigger:OnPostDataPrepare()
    print("Q7600518Trigger - OnPostDataPrepare")
    this = self
end

function Q7600518Trigger:OnPostComponentPrepare()
    print("Q7600518Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600518Trigger:TriggerIn()
    print("Q7600518Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600518)
    this:DestroySelf()
end

function Q7600518Trigger:PreTriggerIn()
    print("Q7600518Trigger - PreTriggerIn")
end

function Q7600518Trigger:LightUpTriggerIn()
    print("Q7600518Trigger - LightUpTriggerIn")
end

function Q7600518Trigger:TriggerOut()
    print("Q7600518Trigger - TriggerOut")
end

return Q7600518Trigger
