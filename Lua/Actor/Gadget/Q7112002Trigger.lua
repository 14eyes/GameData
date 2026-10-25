require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7112002Trigger = class("Q7112002Trigger", GadgetActorProxy)
Q7112002Trigger.defaultAlias = "Q7112002Trigger"
local Q71120ClientConfig = require("Quest/Client/Q71120ClientConfig")

local this
local subIDs = Q71120ClientConfig.SubIDs
local npcs = Q71120ClientConfig.Npcs
local points = Q71120ClientConfig.Points

function Q7112002Trigger:OnPostDataPrepare()
    print("[MainId: 71120][Trigger: Q7112002Trigger] OnPostDataPrepare")
    this = self
end

function Q7112002Trigger:OnPostComponentPrepare()
    print("[MainId: 71120][Trigger: Q7112002Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 71120)
end

function Q7112002Trigger:TriggerIn()
    print("[MainId: 71120][Trigger: Q7112002Trigger] TriggerIn")
    local actor = actorMgr:GetActor("71120")
    actor:RequestInteraction(npcs.Npc21397Data.alias, "", true)
    actor:TransmitPlayerByQuestId(7112002, 3)
end

function Q7112002Trigger:PreTriggerIn()
    print("[MainId: 71120][Trigger: Q7112002Trigger] PreTriggerIn")
end

function Q7112002Trigger:LightUpTriggerIn()
    print("[MainId: 71120][Trigger: Q7112002Trigger] LightUpTriggerIn")
end

function Q7112002Trigger:TriggerOut()
    print("[MainId: 71120][Trigger: Q7112002Trigger] TriggerOut")
end

return Q7112002Trigger
