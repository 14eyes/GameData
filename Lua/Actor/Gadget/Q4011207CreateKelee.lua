require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011207CreateKelee = class("Q4011207CreateKelee", GadgetActorProxy)
Q4011207CreateKelee.defaultAlias = "Q4011207CreateKelee"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q4011207CreateKelee:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q4011207CreateKelee] OnPostDataPrepare")
    this = self
end

function Q4011207CreateKelee:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q4011207CreateKelee] OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011207CreateKelee:TriggerIn()
    print("[MainId: 40112][Trigger: Q4011207CreateKelee] TriggerIn")
end

function Q4011207CreateKelee:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q4011207CreateKelee] PreTriggerIn")
    actorMgr:GetActor("40112"):CreateQuestNpcById(4011207, npcs.Npc10090Data.id, 0)
    this:DestroySelf()
end

function Q4011207CreateKelee:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q4011207CreateKelee] LightUpTriggerIn")
end

function Q4011207CreateKelee:TriggerOut()
    print("[MainId: 40112][Trigger: Q4011207CreateKelee] TriggerOut")
end

return Q4011207CreateKelee
