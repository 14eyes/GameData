require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112001Trigger = class("Q7112001Trigger", GadgetActorProxy)
Q7112001Trigger.defaultAlias = "Q7112001Trigger"
local Q71120ClientConfig = require("Quest/Client/Q71120ClientConfig")

local this
local subIDs = Q71120ClientConfig.SubIDs
local npcs = Q71120ClientConfig.Npcs
local points = Q71120ClientConfig.Points

function Q7112001Trigger:OnPostDataPrepare()
    print("[MainId: 71120][Trigger: Q7112001Trigger] OnPostDataPrepare")
    this = self
end

function Q7112001Trigger:OnPostComponentPrepare()
    print("[MainId: 71120][Trigger: Q7112001Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 0)
end

function Q7112001Trigger:TriggerIn()
    print("[MainId: 71120][Trigger: Q7112001Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71120")
    actor:RequestInteraction(npcs.Npc21397Data.alias, "", true)
    actor:TransmitPlayerByQuestId(7112001, 1)
end

function Q7112001Trigger:PreTriggerIn()
    print("[MainId: 71120][Trigger: Q7112001Trigger] PreTriggerIn")
end

function Q7112001Trigger:LightUpTriggerIn()
    print("[MainId: 71120][Trigger: Q7112001Trigger] LightUpTriggerIn")
end

function Q7112001Trigger:TriggerOut()
    print("[MainId: 71120][Trigger: Q7112001Trigger] TriggerOut")
end

return Q7112001Trigger
