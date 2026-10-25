require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q71659Trigger = class("Q71659Trigger", GadgetActorProxy)
Q71659Trigger.defaultAlias = "Q71659Trigger"
local Q71659ClientConfig = require("Quest/Client/Q71659ClientConfig")

local subIDs = Q71659ClientConfig.SubIDs
local npcs = Q71659ClientConfig.Npcs

function Q71659Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q71659Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(8, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q71659Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("71659"):ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor("71659")
        actor:CreateQuestNpcById(7165902, npcs.Npc1587Data.id, 0)
        actor:RequestInteraction(npcs.Npc1587Data.alias)
    end, nil, nil, "", false, true)

    self:DestroySelf()
end

function Q71659Trigger:TriggerOut()
    print("TriggerOut")
end

return Q71659Trigger
