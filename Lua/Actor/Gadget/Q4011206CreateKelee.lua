require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011206CreateKelee = class("Q4011206CreateKelee", GadgetActorProxy)
Q4011206CreateKelee.defaultAlias = "Q4011206CreateKelee"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q4011206CreateKelee:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q4011206CreateKelee] OnPostDataPrepare")
    this = self
end

function Q4011206CreateKelee:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q4011206CreateKelee] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011206CreateKelee:TriggerIn()
    print("[MainId: 40112][Trigger: Q4011206CreateKelee] TriggerIn")
end

function Q4011206CreateKelee:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q4011206CreateKelee] PreTriggerIn")
end

function Q4011206CreateKelee:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q4011206CreateKelee] LightUpTriggerIn")
    actorMgr:GetActor("40112"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40112")
        actor:CreateQuestNpcById(4011206, npcs.Npc10090Data.id, 0)
        actor:RequestInteraction(npcs.Npc10090Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q4011206CreateKelee:TriggerOut()
    print("[MainId: 40112][Trigger: Q4011206CreateKelee] TriggerOut")
end

return Q4011206CreateKelee
