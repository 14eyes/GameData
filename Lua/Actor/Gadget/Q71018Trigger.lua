require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71018Trigger = class("Q71018Trigger", GadgetActorProxy)
Q71018Trigger.defaultAlias = "Q71018Trigger"
local Q71018ClientConfig = require("Quest/Client/Q71018ClientConfig")

local subIDs = Q71018ClientConfig.SubIDs
local npcs = Q71018ClientConfig.Npcs
local datas = Q71018ClientConfig.Datas

function Q71018Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71018Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(38, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71018Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71018"):CallDelay(0.3, function(arg1)
        actorMgr:GetActor("71018"):TransmitPlayerByQuestId(7101801, 1, nil, function(arg1)
            actorMgr:GetActor("71018"):ShowBlackScreen(0, 3, 0.5, nil, function(arg1)
                actorMgr:GetActor("71018"):RequestInteraction(npcs.Npc2433Data.alias)
            end, nil, "QUEST_Message_Q71018", false, true)
        end)
    end)
end

function Q71018Trigger:TriggerOut()
    print("TriggerOut")
    self:DestroySelf()
end

return Q71018Trigger
