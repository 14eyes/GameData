require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local NPCbubble = class("NPCbubble", GadgetActorProxy)
NPCbubble.defaultAlias = "NPCbubble"
local Q75179ClientConfig = require("Quest/Client/Q75179ClientConfig")

local this
local subIDs = Q75179ClientConfig.SubIDs
local npcs = Q75179ClientConfig.Npcs

function NPCbubble:OnPostDataPrepare()
    print("NPCbubble - OnPostDataPrepare")
    this = self
end

function NPCbubble:OnPostComponentPrepare()
    print("NPCbubble - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75179)
end

function NPCbubble:TriggerIn()
    print("NPCbubble - TriggerIn")
    actorMgr:GetActor("75179"):CreateSpeechBubbleTask(6336, 0, 0, false, 0, 0, false, false)
    this:DestroySelf()
end

function NPCbubble:PreTriggerIn()
    print("NPCbubble - PreTriggerIn")
end

function NPCbubble:LightUpTriggerIn()
    print("NPCbubble - LightUpTriggerIn")
end

function NPCbubble:TriggerOut()
    print("NPCbubble - TriggerOut")
end

return NPCbubble
