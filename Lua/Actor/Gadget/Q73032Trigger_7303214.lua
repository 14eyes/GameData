require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73032Trigger_7303214 = class("Q73032Trigger_7303214", GadgetActorProxy)
Q73032Trigger_7303214.defaultAlias = "Q73032Trigger_7303214"
local Q73032ClientConfig = require("Quest/Client/Q73032ClientConfig")

local subIDs = Q73032ClientConfig.SubIDs
local npcs = Q73032ClientConfig.Npcs
local datas = Q73032ClientConfig.Datas

function Q73032Trigger_7303214:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73032Trigger_7303214:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73032Trigger_7303214:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73032"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("73032")
        actor:CreateQuestNpcById(7303214, npcs.Npc20646Data.id, 0)
        actor:RequestInteraction(npcs.Npc20646Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q73032Trigger_7303214:TriggerOut()
    print("TriggerOut")
end

return Q73032Trigger_7303214
