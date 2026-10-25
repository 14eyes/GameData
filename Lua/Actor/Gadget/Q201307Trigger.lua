require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q201307Trigger = class("Q201307Trigger", GadgetActorProxy)
Q201307Trigger.defaultAlias = "Q201307Trigger"
local Q2013ClientConfig = require("Quest/Client/Q2013ClientConfig")

local mainID = Q2013ClientConfig.MainID
local actorAlias = Q2013ClientConfig.ActorAlias
local subIDs = Q2013ClientConfig.SubIDs
local npcs = Q2013ClientConfig.Npcs
local datas = Q2013ClientConfig.Datas

function Q201307Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q201307Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q201307Trigger:TriggerIn()
    print("TriggerIn")
    self:ShowBlackScreen(0.5, 1, 0.5, function(arg1)
        local actor = actorMgr:GetActor(actorAlias)
        actor:CreateQuestNpcById(201307, npcs.Npc3086Data.id, 0)
        actor:RequestInteraction("Npc3086")
    end)

    self:DestroySelf()
end

function Q201307Trigger:TriggerOut()
    print("TriggerOut")
end

return Q201307Trigger
