require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19017Trigger2 = class("Q19017Trigger2", GadgetActorProxy)
Q19017Trigger2.defaultAlias = "Q19017Trigger2"
local Q19017ClientConfig = require("Quest/Client/Q19017ClientConfig")

local subIDs = Q19017ClientConfig.SubIDs
local npcs = Q19017ClientConfig.Npcs

function Q19017Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19017Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19017Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19017"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19017")
        actor:CreateQuestNpcById(1901705, npcs.Coop_YunjinData.id, 0)
        actor:RequestInteraction(npcs.Coop_YunjinData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19017Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19017Trigger2
