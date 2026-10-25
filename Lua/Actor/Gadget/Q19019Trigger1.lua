require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19019Trigger1 = class("Q19019Trigger1", GadgetActorProxy)
Q19019Trigger1.defaultAlias = "Q19019Trigger1"
local Q19019ClientConfig = require("Quest/Client/Q19019ClientConfig")

local subIDs = Q19019ClientConfig.SubIDs
local npcs = Q19019ClientConfig.Npcs
local datas = Q19019ClientConfig.Datas

function Q19019Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19019Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19019Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19019"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19019")
        actor:CreateQuestNpcById(1901903, npcs.Coop_GorouData.id, 0)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)
end

function Q19019Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19019Trigger1
