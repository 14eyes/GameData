require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q19055Trigger1 = class("Q19055Trigger1", GadgetActorProxy)
Q19055Trigger1.defaultAlias = "Q19055Trigger1"
local Q19055ClientConfig = require("Quest/Client/Q19055ClientConfig")

local subIDs = Q19055ClientConfig.SubIDs
local npcs = Q19055ClientConfig.Npcs
local datas = Q19055ClientConfig.Datas

function Q19055Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q19055Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q19055Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("19055"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("19055")
        actor:RequestCoopInteractionFromSubStartPoint(105901, 1905508)
        actor:RequestInteraction(npcs.Npc12548Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q19055Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q19055Trigger1
