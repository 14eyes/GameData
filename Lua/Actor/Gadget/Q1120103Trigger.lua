require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1120103Trigger = class("Q1120103Trigger", GadgetActorProxy)
Q1120103Trigger.defaultAlias = "Q1120103Trigger"
local Q11201ClientConfig = require("Quest/Client/Q11201ClientConfig")

local mainID = Q11201ClientConfig.MainID
local actorAlias = Q11201ClientConfig.ActorAlias
local subIDs = Q11201ClientConfig.SubIDs
local npcs = Q11201ClientConfig.Npcs
local datas = Q11201ClientConfig.Datas

function Q1120103Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1120103Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(9.614478, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1120103Trigger:TriggerIn()
    local actor = actorMgr:GetActor("11201")
    if actor ~= nil then
        actor:FinishQuestID(false, 1120103)
    end
end

function Q1120103Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1120103Trigger
