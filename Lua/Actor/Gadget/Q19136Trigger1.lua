require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19136Trigger1 = class("Q19136Trigger1", GadgetActorProxy)
Q19136Trigger1.defaultAlias = "Q19136Trigger1"
local Q19136ClientConfig = require("Quest/Client/Q19136ClientConfig")

local subIDs = Q19136ClientConfig.SubIDs
local npcs = Q19136ClientConfig.Npcs
local datas = Q19136ClientConfig.Datas

function Q19136Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19136Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19136Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19136"):ShowBlackScreen(0.5, 1.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19136")
        actor:CreateQuestNpcById(1913613, npcs.Coop_NingguangData.id, 1)
        actor:RequestInteraction(npcs.Coop_NingguangData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19136Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19136Trigger1
