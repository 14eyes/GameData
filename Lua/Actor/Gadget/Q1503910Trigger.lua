require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503910Trigger = class("Q1503910Trigger", GadgetActorProxy)
Q1503910Trigger.defaultAlias = "Q1503910Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503910Trigger:OnPostDataPrepare()
    print("Q1503910Trigger - OnPostDataPrepare")
    this = self
end

function Q1503910Trigger:OnPostComponentPrepare()
    print("Q1503910Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503910Trigger:TriggerIn()
    print("Q1503910Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 1503910)
    this:DestroySelf()
end

function Q1503910Trigger:PreTriggerIn()
    print("Q1503910Trigger - PreTriggerIn")
end

function Q1503910Trigger:LightUpTriggerIn()
    print("Q1503910Trigger - LightUpTriggerIn")
end

function Q1503910Trigger:TriggerOut()
    print("Q1503910Trigger - TriggerOut")
end

return Q1503910Trigger
