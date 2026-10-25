require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7609832Trigger = class("Q7609832Trigger", GadgetActorProxy)
Q7609832Trigger.defaultAlias = "Q7609832Trigger"
local Q76098ClientConfig = require("Quest/Client/Q76098ClientConfig")

local this
local subIDs = Q76098ClientConfig.SubIDs
local datas = Q76098ClientConfig.Datas
local npcs = Q76098ClientConfig.Npcs
local points = Q76098ClientConfig.Points

function Q7609832Trigger:OnPostDataPrepare()
    print("Q7609832Trigger - OnPostDataPrepare")
    this = self
end

function Q7609832Trigger:OnPostComponentPrepare()
    print("Q7609832Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(40, 40, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76098)
end

function Q7609832Trigger:TriggerIn()
    print("Q7609832Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7609832)
    this:DestroySelf()
end

function Q7609832Trigger:PreTriggerIn()
    print("Q7609832Trigger - PreTriggerIn")
end

function Q7609832Trigger:LightUpTriggerIn()
    print("Q7609832Trigger - LightUpTriggerIn")
end

function Q7609832Trigger:TriggerOut()
    print("Q7609832Trigger - TriggerOut")
end

return Q7609832Trigger
