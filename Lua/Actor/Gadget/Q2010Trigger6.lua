require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2010Trigger6 = class("Q2010Trigger6", GadgetActorProxy)
Q2010Trigger6.defaultAlias = "Q2010Trigger6"
local Q2010ClientConfig = require("Quest/Client/Q2010ClientConfig")

local subIDs = Q2010ClientConfig.SubIDs
local npcs = Q2010ClientConfig.Npcs
local datas = Q2010ClientConfig.Datas

function Q2010Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2010Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2010Trigger6:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("2010"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("2010")
        actor:CreateQuestNpcById(201015, npcs.Npc12061Data.id, 0)
        actor:RequestInteraction(npcs.Npc12061Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q2010Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q2010Trigger6
