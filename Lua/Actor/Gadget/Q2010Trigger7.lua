require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2010Trigger7 = class("Q2010Trigger7", GadgetActorProxy)
Q2010Trigger7.defaultAlias = "Q2010Trigger7"
local Q2010ClientConfig = require("Quest/Client/Q2010ClientConfig")

local subIDs = Q2010ClientConfig.SubIDs
local npcs = Q2010ClientConfig.Npcs
local datas = Q2010ClientConfig.Datas

function Q2010Trigger7:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2010Trigger7:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2010Trigger7:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2010"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("2010")
        actor:CreateQuestNpcById(201014, npcs.Npc12098Data.id, 0)
        actor:RequestInteraction(npcs.Npc12098Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q2010Trigger7:TriggerOut()
    print("TriggerOut")
end

return Q2010Trigger7
