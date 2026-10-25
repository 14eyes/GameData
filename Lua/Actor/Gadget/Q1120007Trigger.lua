require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120007Trigger = class("Q1120007Trigger", GadgetActorProxy)
Q1120007Trigger.defaultAlias = "Q1120007Trigger"
local Q11200ClientConfig = require("Quest/Client/Q11200ClientConfig")

local mainID = Q11200ClientConfig.MainID
local actorAlias = Q11200ClientConfig.ActorAlias
local subIDs = Q11200ClientConfig.SubIDs
local npcs = Q11200ClientConfig.Npcs
local points = Q11200ClientConfig.Points
local datas = Q11200ClientConfig.Datas

function Q1120007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6.76848, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120007Trigger:TriggerIn()
    print("TriggerIn")
    self:StartTalk()
end

function Q1120007Trigger:TriggerOut()
    print("TriggerOut")
end

function Q1120007Trigger:StartTalk()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120016)
    end

    print("trigger in")
end

return Q1120007Trigger
