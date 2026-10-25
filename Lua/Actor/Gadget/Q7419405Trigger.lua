require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7419405Trigger = class("Q7419405Trigger", GadgetActorProxy)
Q7419405Trigger.defaultAlias = "Q7419405Trigger"
local Q74194ClientConfig = require("Quest/Client/Q74194ClientConfig")

local this
local subIDs = Q74194ClientConfig.SubIDs
local npcs = Q74194ClientConfig.Npcs
local points = Q74194ClientConfig.Points
local datas = Q74194ClientConfig.Datas

function Q7419405Trigger:OnPostDataPrepare()
    print("[MainId: 74194][Trigger: Q7419405Trigger] OnPostDataPrepare")
    this = self
end

function Q7419405Trigger:OnPostComponentPrepare()
    print("[MainId: 74194][Trigger: Q7419405Trigger] OnPostComponentPrepare")
    this:AddComponentTrigger(45, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 74194)
end

function Q7419405Trigger:TriggerIn()
    print("[MainId: 74194][Trigger: Q7419405Trigger] TriggerIn")
    this:DestroySelf()
end

function Q7419405Trigger:PreTriggerIn()
    print("[MainId: 74194][Trigger: Q7419405Trigger] PreTriggerIn")
    local actor = actorMgr:GetActor("74194")
    actor:CreateQuestNpcById(7419405, npcs.Npc21347Data.id, 0)
    actor:RequestInteraction(npcs.Npc21347Data.alias, "", true)
end

function Q7419405Trigger:LightUpTriggerIn()
    print("[MainId: 74194][Trigger: Q7419405Trigger] LightUpTriggerIn")
end

function Q7419405Trigger:TriggerOut()
    print("[MainId: 74194][Trigger: Q7419405Trigger] TriggerOut")
end

return Q7419405Trigger
