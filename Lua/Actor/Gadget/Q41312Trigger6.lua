require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41312Trigger6 = class("Q41312Trigger6", GadgetActorProxy)
Q41312Trigger6.defaultAlias = "Q41312Trigger6"
local Q41312ClientConfig = require("Quest/Client/Q41312ClientConfig")

local mainID = Q41312ClientConfig.MainID
local actorAlias = Q41312ClientConfig.ActorAlias
local subIDs = Q41312ClientConfig.SubIDs
local npcs = Q41312ClientConfig.Npcs
local gadgets = Q41312ClientConfig.Gadgets
local datas = Q41312ClientConfig.Datas

function Q41312Trigger6:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41312Trigger6:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41312Trigger6:TriggerIn()
    local Q41312ClientConfig = require("Quest/Client/Q41312ClientConfig")
    local actor = actorMgr:GetActor(Q41312ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4131206)
        actor:FinishQuestID(false, 4131219)
    end

    self:DestroySelf()
end

function Q41312Trigger6:TriggerOut()
    print("TriggerOut")
end

return Q41312Trigger6
