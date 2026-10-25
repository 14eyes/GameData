require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q112026Trigger = class("Q112026Trigger", GadgetActorProxy)
Q112026Trigger.defaultAlias = "Q112026Trigger"
local Q11202ClientConfig = require("Quest/Client/Q11202ClientConfig")

local mainID = Q11202ClientConfig.MainID
local actorAlias = Q11202ClientConfig.ActorAlias
local subIDs = Q11202ClientConfig.SubIDs
local npcs = Q11202ClientConfig.Npcs
local datas = Q11202ClientConfig.Datas

function Q112026Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q112026Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18.13391, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q112026Trigger:TriggerIn()
    local actor = actorMgr:GetActor("11202")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120206)
    end

    print("trigger in")
end

function Q112026Trigger:TriggerOut()
    print("TriggerOut")
end

return Q112026Trigger
