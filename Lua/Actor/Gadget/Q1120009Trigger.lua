require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120009Trigger = class("Q1120009Trigger", GadgetActorProxy)
Q1120009Trigger.defaultAlias = "Q1120009Trigger"
local Q11200ClientConfig = require("Quest/Client/Q11200ClientConfig")

local mainID = Q11200ClientConfig.MainID
local actorAlias = Q11200ClientConfig.ActorAlias
local subIDs = Q11200ClientConfig.SubIDs
local npcs = Q11200ClientConfig.Npcs
local points = Q11200ClientConfig.Points
local datas = Q11200ClientConfig.Datas

function Q1120009Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120009Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(4.967558, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120009Trigger:TriggerIn()
    local actor = actorMgr:GetActor("11200")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120009)
    end

    print("trigger in")
end

function Q1120009Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120009Trigger
