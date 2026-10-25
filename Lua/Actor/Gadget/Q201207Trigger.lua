require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201207Trigger = class("Q201207Trigger", GadgetActorProxy)
Q201207Trigger.defaultAlias = "Q201207Trigger"
local Q2012ClientConfig = require("Quest/Client/Q2012ClientConfig")

local mainID = Q2012ClientConfig.MainID
local actorAlias = Q2012ClientConfig.ActorAlias
local subIDs = Q2012ClientConfig.SubIDs
local npcs = Q2012ClientConfig.Npcs
local gadgets = Q2012ClientConfig.Gadgets
local datas = Q2012ClientConfig.Datas

function Q201207Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201207Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(13, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201207Trigger:TriggerIn()
    print("TriggerIn")
    local actor = actorMgr:GetActor(actorAlias)
    actor.FinishQuestID(actor, false, 201207)
    actor.ShowBlackScreen(actor, 1, 2, 0.5, function()
        actor:RequestInteraction("Npc12043")
        actor:DestroyQuestNpcActor("Npc12051", 3)
    end, nil, nil)

    self:DestroySelf()
end

function Q201207Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201207Trigger
