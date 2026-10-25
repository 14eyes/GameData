require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19055Trigger2 = class("Q19055Trigger2", GadgetActorProxy)
Q19055Trigger2.defaultAlias = "Q19055Trigger2"
local Q19055ClientConfig = require("Quest/Client/Q19055ClientConfig")

local subIDs = Q19055ClientConfig.SubIDs
local npcs = Q19055ClientConfig.Npcs
local datas = Q19055ClientConfig.Datas

function Q19055Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19055Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19055Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19055"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19055")
        actor:CreateQuestNpcById(1905511, npcs.Coop_GorouData.id, 0)
        actor:RequestCoopInteractionFromSubStartPoint(105901, 1905511)
        actor:RequestInteraction(npcs.Coop_GorouData.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19055Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q19055Trigger2
