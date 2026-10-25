require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2014Trigger3 = class("Q2014Trigger3", GadgetActorProxy)
Q2014Trigger3.defaultAlias = "Q2014Trigger3"
local Q2014ClientConfig = require("Quest/Client/Q2014ClientConfig")

local subIDs = Q2014ClientConfig.SubIDs
local npcs = Q2014ClientConfig.Npcs
local datas = Q2014ClientConfig.Datas

function Q2014Trigger3:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2014Trigger3:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2014Trigger3:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2014"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("2014")
        actor:CreateQuestNpcById(201405, npcs.Npc12071Data.id, 0)
        actor:RequestInteraction(npcs.Npc12071Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q2014Trigger3:TriggerOut()
    print("TriggerOut")
end

return Q2014Trigger3
