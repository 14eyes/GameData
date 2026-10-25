require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q2020Trigger1 = class("Q2020Trigger1", GadgetActorProxy)
Q2020Trigger1.defaultAlias = "Q2020Trigger1"
local Q2020ClientConfig = require("Quest/Client/Q2020ClientConfig")

local subIDs = Q2020ClientConfig.SubIDs
local npcs = Q2020ClientConfig.Npcs
local gadgets = Q2020ClientConfig.Gadgets
local datas = Q2020ClientConfig.Datas

function Q2020Trigger1:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q2020Trigger1:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(40, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q2020Trigger1:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor("2020")
    actor.ShowBlackScreen(actor, 0.5, 1, 0.5, function()
        actor:CreateQuestNpcById(202003, npcs.Npc1036Data.id)
        actor:RequestInteraction(npcs.Npc1036Data.alias)
    end)

    self:DestroySelf()
end

function Q2020Trigger1:TriggerOut()
    print("TriggerOut")
end

return Q2020Trigger1
