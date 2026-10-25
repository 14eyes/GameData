require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609912Trigger = class("Q7609912Trigger", GadgetActorProxy)
Q7609912Trigger.defaultAlias = "Q7609912Trigger"
local Q76099ClientConfig = require("Quest/Client/Q76099ClientConfig")

local this
local subIDs = Q76099ClientConfig.SubIDs
local datas = Q76099ClientConfig.Datas
local npcs = Q76099ClientConfig.Npcs
local points = Q76099ClientConfig.Points

function Q7609912Trigger:OnPostDataPrepare()
    print("Q7609912Trigger - OnPostDataPrepare")
    this = self
end

function Q7609912Trigger:OnPostComponentPrepare()
    print("Q7609912Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76099)
end

function Q7609912Trigger:TriggerIn()
    print("Q7609912Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609912)
    this:DestroySelf()
end

function Q7609912Trigger:PreTriggerIn()
    print("Q7609912Trigger - PreTriggerIn")
end

function Q7609912Trigger:LightUpTriggerIn()
    print("Q7609912Trigger - LightUpTriggerIn")
end

function Q7609912Trigger:TriggerOut()
    print("Q7609912Trigger - TriggerOut")
end

return Q7609912Trigger
