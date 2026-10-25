require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600515Trigger = class("Q7600515Trigger", GadgetActorProxy)
Q7600515Trigger.defaultAlias = "Q7600515Trigger"
local Q76005ClientConfig = require("Quest/Client/Q76005ClientConfig")

local this
local subIDs = Q76005ClientConfig.SubIDs
local datas = Q76005ClientConfig.Datas
local npcs = Q76005ClientConfig.Npcs
local points = Q76005ClientConfig.Points

function Q7600515Trigger:OnPostDataPrepare()
    print("Q7600515Trigger - OnPostDataPrepare")
    this = self
end

function Q7600515Trigger:OnPostComponentPrepare()
    print("Q7600515Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76005)
end

function Q7600515Trigger:TriggerIn()
    print("Q7600515Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7600515)
    this:DestroySelf()
end

function Q7600515Trigger:PreTriggerIn()
    print("Q7600515Trigger - PreTriggerIn")
end

function Q7600515Trigger:LightUpTriggerIn()
    print("Q7600515Trigger - LightUpTriggerIn")
end

function Q7600515Trigger:TriggerOut()
    print("Q7600515Trigger - TriggerOut")
end

return Q7600515Trigger
