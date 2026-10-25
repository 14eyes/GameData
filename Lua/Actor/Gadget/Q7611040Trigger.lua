require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7611040Trigger = class("Q7611040Trigger", GadgetActorProxy)
Q7611040Trigger.defaultAlias = "Q7611040Trigger"
local Q76110ClientConfig = require("Quest/Client/Q76110ClientConfig")

local this
local subIDs = Q76110ClientConfig.SubIDs
local datas = Q76110ClientConfig.Datas
local npcs = Q76110ClientConfig.Npcs
local points = Q76110ClientConfig.Points

function Q7611040Trigger:OnPostDataPrepare()
    print("Q7611040Trigger - OnPostDataPrepare")
    this = self
end

function Q7611040Trigger:OnPostComponentPrepare()
    print("Q7611040Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76110)
end

function Q7611040Trigger:TriggerIn()
    print("Q7611040Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7611040)
    this:DestroySelf()
end

function Q7611040Trigger:PreTriggerIn()
    print("Q7611040Trigger - PreTriggerIn")
end

function Q7611040Trigger:LightUpTriggerIn()
    print("Q7611040Trigger - LightUpTriggerIn")
end

function Q7611040Trigger:TriggerOut()
    print("Q7611040Trigger - TriggerOut")
end

return Q7611040Trigger
