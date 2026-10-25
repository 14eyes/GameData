require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7334803Trigger = class("Q7334803Trigger", GadgetActorProxy)
Q7334803Trigger.defaultAlias = "Q7334803Trigger"
local Q73348ClientConfig = require("Quest/Client/Q73348ClientConfig")

local this
local subIDs = Q73348ClientConfig.SubIDs
local npcs = Q73348ClientConfig.Npcs
local points = Q73348ClientConfig.Points
local datas = Q73348ClientConfig.Datas

function Q7334803Trigger:OnPostDataPrepare()
    print("[MainId: 73348][Trigger: Q7334803Trigger] OnPostDataPrepare")
    this = self
end

function Q7334803Trigger:OnPostComponentPrepare()
    print("[MainId: 73348][Trigger: Q7334803Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(40, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q7334803Trigger:TriggerIn()
    print("[MainId: 73348][Trigger: Q7334803Trigger] TriggerIn")
    actorMgr:GetActor("73348"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("73348")
        actor:CreateQuestNpcById(7334803, npcs.Npc21044Data.id, 1)
        actor:RequestInteraction(npcs.Npc21044Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q7334803Trigger:PreTriggerIn()
    print("[MainId: 73348][Trigger: Q7334803Trigger] PreTriggerIn")
end

function Q7334803Trigger:LightUpTriggerIn()
    print("[MainId: 73348][Trigger: Q7334803Trigger] LightUpTriggerIn")
end

function Q7334803Trigger:TriggerOut()
    print("[MainId: 73348][Trigger: Q7334803Trigger] TriggerOut")
end

return Q7334803Trigger
