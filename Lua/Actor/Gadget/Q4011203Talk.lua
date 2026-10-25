require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4011203Talk = class("Q4011203Talk", GadgetActorProxy)
Q4011203Talk.defaultAlias = "Q4011203Talk"
local Q40112ClientConfig = require("Quest/Client/Q40112ClientConfig")

local this
local subIDs = Q40112ClientConfig.SubIDs
local npcs = Q40112ClientConfig.Npcs
local points = Q40112ClientConfig.Points
local datas = Q40112ClientConfig.Datas

function Q4011203Talk:OnPostDataPrepare()
    print("[MainId: 40112][Trigger: Q4011203Talk] OnPostDataPrepare")
    this = self
end

function Q4011203Talk:OnPostComponentPrepare()
    print("[MainId: 40112][Trigger: Q4011203Talk] OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4011203Talk:TriggerIn()
    print("[MainId: 40112][Trigger: Q4011203Talk] TriggerIn")
end

function Q4011203Talk:PreTriggerIn()
    print("[MainId: 40112][Trigger: Q4011203Talk] PreTriggerIn")
end

function Q4011203Talk:LightUpTriggerIn()
    print("[MainId: 40112][Trigger: Q4011203Talk] LightUpTriggerIn")
    actorMgr:GetActor("40112"):ShowBlackScreen(0, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("40112")
        actor:CreateQuestNpcById(4011203, npcs.Npc10090Data.id, 1)
        actor:RequestInteraction(npcs.Npc10090Data.alias)
        this:DestroySelf()
    end, nil, nil, "", false, true)
end

function Q4011203Talk:TriggerOut()
    print("[MainId: 40112][Trigger: Q4011203Talk] TriggerOut")
end

return Q4011203Talk
