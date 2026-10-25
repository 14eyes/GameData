require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1202604Trigger = class("Q1202604Trigger", GadgetActorProxy)
Q1202604Trigger.defaultAlias = "Q1202604Trigger"
local Q12026ClientConfig = require("Quest/Client/Q12026ClientConfig")

local subIDs = Q12026ClientConfig.SubIDs
local npcs = Q12026ClientConfig.Npcs
local gadgets = Q12026ClientConfig.Gadgets
local datas = Q12026ClientConfig.Datas

function Q1202604Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1202604Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1202604Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("12026"):TransmitPlayerByQuestId(1202603, 1202603, nil, function(arg1)
        local actor = actorMgr:GetActor("12026")
        actor:CreateQuestNpcById(1202603, npcs.Npc1044Data.id, 0)
        actor:RequestInteraction(npcs.Npc1044Data.alias)
    end)
end

function Q1202604Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1202604Trigger
