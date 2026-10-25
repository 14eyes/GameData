require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2303005Trigger = class("Q2303005Trigger", GadgetActorProxy)
Q2303005Trigger.defaultAlias = "Q2303005Trigger"
local Q23030ClientConfig = require("Quest/Client/Q23030ClientConfig")

local subIDs = Q23030ClientConfig.SubIDs
local npcs = Q23030ClientConfig.Npcs
local datas = Q23030ClientConfig.Datas

function Q2303005Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2303005Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q2303005Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("23030"):CallDelay(1.5, function(arg1)
        local actor = actorMgr:GetActor("23030")
        actor:ShowBlackScreen(0.5, 1, 0.5, nil, nil, nil, "", false, true)
        actor:CallDelay(0.5, function(arg1)
            local actor = actorMgr:GetActor("23030")
            actor:CreateQuestNpcById(2303005, npcs.Npc12688Data.id, 1)
            actor:RequestInteraction(npcs.Npc12688Data.alias)
        end)
    end)

    self:DestroySelf()
end

function Q2303005Trigger:TriggerOut()
    print("TriggerOut")
end

return Q2303005Trigger
