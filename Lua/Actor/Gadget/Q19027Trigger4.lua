require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19027Trigger4 = class("Q19027Trigger4", GadgetActorProxy)
Q19027Trigger4.defaultAlias = "Q19027Trigger4"
local Q19027ClientConfig = require("Quest/Client/Q19027ClientConfig")

local subIDs = Q19027ClientConfig.SubIDs
local npcs = Q19027ClientConfig.Npcs
local datas = Q19027ClientConfig.Datas

function Q19027Trigger4:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19027Trigger4:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q19027Trigger4:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19027"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19027")
        actor:CreateQuestNpcById(1902707, npcs.Coop_GorouData.id, 0)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19027Trigger4:TriggerOut()
    print("TriggerOut")
end

return Q19027Trigger4
