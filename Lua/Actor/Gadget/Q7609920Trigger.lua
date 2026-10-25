require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609920Trigger = class("Q7609920Trigger", GadgetActorProxy)
Q7609920Trigger.defaultAlias = "Q7609920Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609920Trigger:OnPostDataPrepare()
    print("Q7609920Trigger - OnPostDataPrepare")
    this = self
end

function Q7609920Trigger:OnPostComponentPrepare()
    print("Q7609920Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609920Trigger:TriggerIn()
    print("Q7609920Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609920)
    this:DestroySelf()
end

function Q7609920Trigger:PreTriggerIn()
    print("Q7609920Trigger - PreTriggerIn")
end

function Q7609920Trigger:LightUpTriggerIn()
    print("Q7609920Trigger - LightUpTriggerIn")
end

function Q7609920Trigger:TriggerOut()
    print("Q7609920Trigger - TriggerOut")
end

return Q7609920Trigger
