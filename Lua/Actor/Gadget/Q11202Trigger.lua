require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q11202Trigger = class("Q11202Trigger", GadgetActorProxy)
Q11202Trigger.defaultAlias = "Q11202Trigger"
local Q11202ClientConfig = require("Quest/Client/Q11202ClientConfig")

local mainID = Q11202ClientConfig.MainID
local actorAlias = Q11202ClientConfig.ActorAlias
local subIDs = Q11202ClientConfig.SubIDs
local npcs = Q11202ClientConfig.Npcs
local datas = Q11202ClientConfig.Datas

function Q11202Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q11202Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7.620313, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q11202Trigger:TriggerIn()
    local actor = actorMgr:GetActor("11202")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120203)
    end

    print("trigger in")
end

function Q11202Trigger:TriggerOut()
    print("TriggerOut")
end

return Q11202Trigger
