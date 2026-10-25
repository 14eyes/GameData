require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104503Trigger = class("Q1104503Trigger", GadgetActorProxy)
Q1104503Trigger.defaultAlias = "Q1104503Trigger"
local Q11045ClientConfig = require("Quest/Client/Q11045ClientConfig")

local mainID = Q11045ClientConfig.MainID
local actorAlias = Q11045ClientConfig.ActorAlias
local subIDs = Q11045ClientConfig.SubIDs
local npcs = Q11045ClientConfig.Npcs
local gadgets = Q11045ClientConfig.Gadgets
local datas = Q11045ClientConfig.Datas

function Q1104503Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104503Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(11, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104503Trigger:TriggerIn()
    local actor = actorMgr:GetActor(Q11045ClientConfig.ActorAlias)
    if actor ~= nil then
        actor:NarratorOnlyTaskByData(datas.NarratorPuzzle2, nil, 11021)
    end

    print("11045 narrator2")
    self:DestroySelf()
end

function Q1104503Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104503Trigger
