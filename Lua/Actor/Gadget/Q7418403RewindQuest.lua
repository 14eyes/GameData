require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7418403RewindQuest = class("Q7418403RewindQuest", GadgetActorProxy)
Q7418403RewindQuest.defaultAlias = "Q7418403RewindQuest"
local Q74184ClientConfig = require("Quest/Client/Q74184ClientConfig")

local this
local subIDs = Q74184ClientConfig.SubIDs
local npcs = Q74184ClientConfig.Npcs
local points = Q74184ClientConfig.Points
local datas = Q74184ClientConfig.Datas

function Q7418403RewindQuest:OnPostDataPrepare()
    print("[MainId: 74184][Trigger: Q7418403RewindQuest] OnPostDataPrepare")
    this = self
end

function Q7418403RewindQuest:OnPostComponentPrepare()
    print("[MainId: 74184][Trigger: Q7418403RewindQuest] OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74184)
end

function Q7418403RewindQuest:TriggerIn()
    print("[MainId: 74184][Trigger: Q7418403RewindQuest] TriggerIn")
    actorMgr:GetActor("74184"):RequestInteraction(npcs.Npc21435Data.alias, "", true)
    this:DestroySelf()
end

function Q7418403RewindQuest:PreTriggerIn()
    print("[MainId: 74184][Trigger: Q7418403RewindQuest] PreTriggerIn")
end

function Q7418403RewindQuest:LightUpTriggerIn()
    print("[MainId: 74184][Trigger: Q7418403RewindQuest] LightUpTriggerIn")
end

function Q7418403RewindQuest:TriggerOut()
    print("[MainId: 74184][Trigger: Q7418403RewindQuest] TriggerOut")
end

return Q7418403RewindQuest
