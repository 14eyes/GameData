require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13006Trigger1 = class("Q13006Trigger1", GadgetActorProxy)
Q13006Trigger1.defaultAlias = "Q13006Trigger1"
local Q13006ClientConfig = require("Quest/Client/Q13006ClientConfig")

local this
local subIDs = Q13006ClientConfig.SubIDs
local npcs = Q13006ClientConfig.Npcs
local datas = Q13006ClientConfig.Datas

function Q13006Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q13006Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(14, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13006Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13006"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13006")
        actor:CreateQuestNpcById(1300607, npcs.Npc1054Data.id, 0)
        actor:RequestInteraction(npcs.Npc1054Data.alias)
    end, nil, nil, "", false, true)

    this:DestroySelf()
end

function Q13006Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q13006Trigger1
