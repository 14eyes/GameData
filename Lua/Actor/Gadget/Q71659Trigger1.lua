require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71659Trigger1 = class("Q71659Trigger1", GadgetActorProxy)
Q71659Trigger1.defaultAlias = "Q71659Trigger1"
local Q71659ClientConfig = require("Quest/Client/Q71659ClientConfig")

local subIDs = Q71659ClientConfig.SubIDs
local npcs = Q71659ClientConfig.Npcs

function Q71659Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71659Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71659Trigger1:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71659"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("71659")
        actor:CreateQuestNpcById(7165904, npcs.Npc1587Data.id, 0)
        actor:RequestInteraction(npcs.Npc1587Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q71659Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q71659Trigger1
