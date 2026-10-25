require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73068Trigger_CutsceneAfterTalk = class("Q73068Trigger_CutsceneAfterTalk", GadgetActorProxy)
Q73068Trigger_CutsceneAfterTalk.defaultAlias = "Q73068Trigger_CutsceneAfterTalk"
local Q73068ClientConfig = require("Quest/Client/Q73068ClientConfig")

local subIDs = Q73068ClientConfig.SubIDs
local npcs = Q73068ClientConfig.Npcs

function Q73068Trigger_CutsceneAfterTalk:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73068Trigger_CutsceneAfterTalk:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73068Trigger_CutsceneAfterTalk:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73068"):RequestInteraction(nil)
    self:DestroySelf()
end

function Q73068Trigger_CutsceneAfterTalk:TriggerOut()
    print("TriggerOut")
end

return Q73068Trigger_CutsceneAfterTalk
