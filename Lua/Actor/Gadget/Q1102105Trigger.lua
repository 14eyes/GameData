require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1102105Trigger = class("Q1102105Trigger", GadgetActorProxy)
Q1102105Trigger.defaultAlias = "Q1102105Trigger"
local Q11021ClientConfig = require("Quest/Client/Q11021ClientConfig")

local mainID = Q11021ClientConfig.MainID
local actorAlias = Q11021ClientConfig.ActorAlias
local subIDs = Q11021ClientConfig.SubIDs
local npcs = Q11021ClientConfig.Npcs
local gadgets = Q11021ClientConfig.Gadgets
local datas = Q11021ClientConfig.Datas

function Q1102105Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1102105Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1102105Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11021ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTaskByData(datas.NarratorWithId04, nil, 11021)
    end

    print("11021 narrator")
    self:DestroySelf()
end

function Q1102105Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1102105Trigger
