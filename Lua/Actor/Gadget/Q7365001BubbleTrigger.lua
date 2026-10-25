require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7365001BubbleTrigger = class("Q7365001BubbleTrigger", GadgetActorProxy)
Q7365001BubbleTrigger.defaultAlias = "Q7365001BubbleTrigger"
local Q73650ClientConfig = require("Quest/Client/Q73650ClientConfig")

local subIDs = Q73650ClientConfig.SubIDs
local npcs = Q73650ClientConfig.Npcs
local datas = Q73650ClientConfig.Datas

function Q7365001BubbleTrigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q7365001BubbleTrigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q7365001BubbleTrigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73650"):CreateSpeechBubbleTask(npcs.Npc30225Data.id, 736509901, 4, true, 8, 9)
    self:DestroySelf()
end

function Q7365001BubbleTrigger:TriggerOut()
    print("TriggerOut")
end

return Q7365001BubbleTrigger
