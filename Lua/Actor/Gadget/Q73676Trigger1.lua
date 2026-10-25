require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q73676Trigger1 = class("Q73676Trigger1", GadgetActorProxy)
Q73676Trigger1.defaultAlias = "Q73676Trigger1"
local Q73676ClientConfig = require("Quest/Client/Q73676ClientConfig")

local subIDs = Q73676ClientConfig.SubIDs
local npcs = Q73676ClientConfig.Npcs
local datas = Q73676ClientConfig.Datas

function Q73676Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q73676Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(15, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q73676Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("73676"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("73676")
        actor:CreateQuestNpcById(7367604, npcs.Npc12760Data.id, 0)
        actor:RequestInteraction(npcs.Npc12760Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q73676Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q73676Trigger1
