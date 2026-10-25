require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q74018BubbleTrigger = class("Q74018BubbleTrigger", GadgetActorProxy)
Q74018BubbleTrigger.defaultAlias = "Q74018BubbleTrigger"
local Q74018ClientConfig = require("Quest/Client/Q74018ClientConfig")

local this
local subIDs = Q74018ClientConfig.SubIDs
local npcs = Q74018ClientConfig.Npcs
local points = Q74018ClientConfig.Points

function Q74018BubbleTrigger:OnPostDataPrepare()
    print("[MainId: 74018][Trigger: Q74018BubbleTrigger] OnPostDataPrepare")
    this = self
end

function Q74018BubbleTrigger:OnPostComponentPrepare()
    print("[MainId: 74018][Trigger: Q74018BubbleTrigger] OnPostComponentPrepare")
    local actor = actorMgr:GetActor("74018")
    actor:CreateSpeechBubbleTask(npcs.Npc21089Data.id, 0, 0, false, 0, 0)
    actor:ClearSpeechBubbleTask()
end

function Q74018BubbleTrigger:TriggerIn()
    print("[MainId: 74018][Trigger: Q74018BubbleTrigger] TriggerIn")
    this:DestroySelf()
end

function Q74018BubbleTrigger:PreTriggerIn()
    print("[MainId: 74018][Trigger: Q74018BubbleTrigger] PreTriggerIn")
end

function Q74018BubbleTrigger:LightUpTriggerIn()
    print("[MainId: 74018][Trigger: Q74018BubbleTrigger] LightUpTriggerIn")
end

function Q74018BubbleTrigger:TriggerOut()
    print("[MainId: 74018][Trigger: Q74018BubbleTrigger] TriggerOut")
end

return Q74018BubbleTrigger
