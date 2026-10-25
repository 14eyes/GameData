require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517901Trigger = class("Q7517901Trigger", GadgetActorProxy)
Q7517901Trigger.defaultAlias = "Q7517901Trigger"
local Q75179ClientConfig = require("Quest/Client/Q75179ClientConfig")

local this
local subIDs = Q75179ClientConfig.SubIDs
local datas = Q75179ClientConfig.Datas
local npcs = Q75179ClientConfig.Npcs
local points = Q75179ClientConfig.Points

function Q7517901Trigger:OnPostDataPrepare()
    print("Q7517901Trigger - OnPostDataPrepare")
    this = self
end

function Q7517901Trigger:OnPostComponentPrepare()
    print("Q7517901Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75179)
end

function Q7517901Trigger:TriggerIn()
    print("Q7517901Trigger - TriggerIn")
    actorMgr:GetActor("75179"):CreateSpeechBubbleTask(npcs.Npc6336.id, 1016633600, 10, true, 3, 5, true, false)
    this:DestroySelf()
end

function Q7517901Trigger:PreTriggerIn()
    print("Q7517901Trigger - PreTriggerIn")
end

function Q7517901Trigger:LightUpTriggerIn()
    print("Q7517901Trigger - LightUpTriggerIn")
end

function Q7517901Trigger:TriggerOut()
    print("Q7517901Trigger - TriggerOut")
end

return Q7517901Trigger
