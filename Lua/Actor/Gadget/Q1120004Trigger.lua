require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120004Trigger = class("Q1120004Trigger", GadgetActorProxy)
Q1120004Trigger.defaultAlias = "Q1120004Trigger"
local Q11200ClientConfig = require("Quest/Client/Q11200ClientConfig")

local mainID = Q11200ClientConfig.MainID
local actorAlias = Q11200ClientConfig.ActorAlias
local subIDs = Q11200ClientConfig.SubIDs
local npcs = Q11200ClientConfig.Npcs
local points = Q11200ClientConfig.Points
local datas = Q11200ClientConfig.Datas

function Q1120004Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120004Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5.345559, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120004Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor(actorAlias):ShowBlackScreen(0.5, 0.5, 0.5, self.StartTalk1120004, nil, nil, "")
end

function Q1120004Trigger:TriggerOut()
    print("TriggerOut")
end

function Q1120004Trigger:StartTalk1120004()
    print("StartTalk1120004")
    local actor = actorMgr:GetActor(actorAlias)
    actor:CreateQuestNpcById(1120004, npcs.Npc10233Data.id, 0)
    actor:RequestInteraction("Npc10233")
end

return Q1120004Trigger
