require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q13007Trigger2 = class("Q13007Trigger2", GadgetActorProxy)
Q13007Trigger2.defaultAlias = "Q13007Trigger2"
local Q13007ClientConfig = require("Quest/Client/Q13007ClientConfig")

local subIDs = Q13007ClientConfig.SubIDs
local npcs = Q13007ClientConfig.Npcs
local datas = Q13007ClientConfig.Datas

function Q13007Trigger2:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q13007Trigger2:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut)
end

function Q13007Trigger2:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("13007"):ShowBlackScreen(0.5, 0.5, 0.5, function(arg1)
        local actor = actorMgr:GetActor("13007")
        actor:CreateQuestNpcById(1300706, npcs.Npc12769Data.id, 0)
        actor:CreateQuestNpcById(1300706, npcs.Npc12770Data.id, 0)
        actor:RequestInteraction(npcs.Npc12770Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q13007Trigger2:TriggerOut()
    print("TriggerOut")
end

return Q13007Trigger2
