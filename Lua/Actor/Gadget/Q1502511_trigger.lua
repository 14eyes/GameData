require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1502511_trigger = class("Q1502511_trigger", GadgetActorProxy)
Q1502511_trigger.defaultAlias = "Q1502511_trigger"
local Q15025ClientConfig = require("Quest/Client/Q15025ClientConfig")

local this
local subIDs = Q15025ClientConfig.SubIDs
local datas = Q15025ClientConfig.Datas
local npcs = Q15025ClientConfig.Npcs
local points = Q15025ClientConfig.Points

function Q1502511_trigger:OnPostDataPrepare()
    print("Q1502511_trigger - OnPostDataPrepare")
    this = self
end

function Q1502511_trigger:OnPostComponentPrepare()
    print("Q1502511_trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15025)
end

function Q1502511_trigger:TriggerIn()
    print("Q1502511_trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1502511)
    this:DestroySelf()
end

function Q1502511_trigger:PreTriggerIn()
    print("Q1502511_trigger - PreTriggerIn")
end

function Q1502511_trigger:LightUpTriggerIn()
    print("Q1502511_trigger - LightUpTriggerIn")
end

function Q1502511_trigger:TriggerOut()
    print("Q1502511_trigger - TriggerOut")
end

return Q1502511_trigger
