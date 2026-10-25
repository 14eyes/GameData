require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q70007Trigger = class("Q70007Trigger", GadgetActorProxy)
Q70007Trigger.defaultAlias = "Q70007Trigger"
local Q70007ClientConfig = require("Quest/Client/Q70007ClientConfig")

local mainID = Q70007ClientConfig.MainID
local actorAlias = Q70007ClientConfig.ActorAlias
local subIDs = Q70007ClientConfig.SubIDs
local npcs = Q70007ClientConfig.Npcs
local datas = Q70007ClientConfig.Datas

function Q70007Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q70007Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(7, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q70007Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q70007ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 7000709)
    end

    self:DestroySelf()
end

function Q70007Trigger:TriggerOut()
    print("TriggerOut")
end

return Q70007Trigger
