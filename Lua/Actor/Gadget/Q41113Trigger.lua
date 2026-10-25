require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q41113Trigger = class("Q41113Trigger", GadgetActorProxy)
Q41113Trigger.defaultAlias = "Q41113Trigger"
local Q41113ClientConfig = require("Quest/Client/Q41113ClientConfig")

local mainID = Q41113ClientConfig.MainID
local actorAlias = Q41113ClientConfig.ActorAlias
local subIDs = Q41113ClientConfig.SubIDs
local npcs = Q41113ClientConfig.Npcs
local gadgets = Q41113ClientConfig.Gadgets
local points = Q41113ClientConfig.Points
local datas = Q41113ClientConfig.Datas

function Q41113Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q41113Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(6, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q41113Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q41113ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:FinishQuestID(false, 4111317)
    end

    self:DestroySelf()
end

function Q41113Trigger:TriggerOut()
    print("TriggerOut")
end

return Q41113Trigger
