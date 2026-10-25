require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73068Trigger_CutsceneStart = class("Q73068Trigger_CutsceneStart", GadgetActorProxy)
Q73068Trigger_CutsceneStart.defaultAlias = "Q73068Trigger_CutsceneStart"
local Q73068ClientConfig = require("Quest/Client/Q73068ClientConfig")

local subIDs = Q73068ClientConfig.SubIDs
local npcs = Q73068ClientConfig.Npcs

function Q73068Trigger_CutsceneStart:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73068Trigger_CutsceneStart:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73068Trigger_CutsceneStart:TriggerIn()
    print("TriggerIn")
    actorUtils.FinishQuestID(false, 7306804)
    self:DestroySelf()
end

function Q73068Trigger_CutsceneStart:TriggerOut()
    print("TriggerOut")
end

return Q73068Trigger_CutsceneStart
