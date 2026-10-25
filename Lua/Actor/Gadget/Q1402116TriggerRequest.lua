require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1402116TriggerRequest = class("Q1402116TriggerRequest", GadgetActorProxy)
Q1402116TriggerRequest.defaultAlias = "Q1402116TriggerRequest"
local Q14021ClientConfig = require("Quest/Client/Q14021ClientConfig")

local this
local subIDs = Q14021ClientConfig.SubIDs
local npcs = Q14021ClientConfig.Npcs
local points = Q14021ClientConfig.Points
local datas = Q14021ClientConfig.Datas

function Q1402116TriggerRequest:OnPostDataPrepare()
    print("[MainId: 14021][Trigger: Q1402116TriggerRequest] OnPostDataPrepare")
    this = self
end

function Q1402116TriggerRequest:OnPostComponentPrepare()
    print("[MainId: 14021][Trigger: Q1402116TriggerRequest] OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(6, 5, true, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 14021)
end

function Q1402116TriggerRequest:TriggerIn()
    print("[MainId: 14021][Trigger: Q1402116TriggerRequest] TriggerIn")
    local actor = actorMgr:GetActor("14021")
    actor:CreateQuestNpcById(1402116, npcs.Npc1071Data.id, 2)
    actor:RequestInteraction(npcs.Npc1071Data.alias, "", true)
    this:DestroySelf()
end

function Q1402116TriggerRequest:PreTriggerIn()
    print("[MainId: 14021][Trigger: Q1402116TriggerRequest] PreTriggerIn")
end

function Q1402116TriggerRequest:LightUpTriggerIn()
    print("[MainId: 14021][Trigger: Q1402116TriggerRequest] LightUpTriggerIn")
end

function Q1402116TriggerRequest:TriggerOut()
    print("[MainId: 14021][Trigger: Q1402116TriggerRequest] TriggerOut")
end

return Q1402116TriggerRequest
