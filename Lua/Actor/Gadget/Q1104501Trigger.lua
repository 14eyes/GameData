require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104501Trigger = class("Q1104501Trigger", GadgetActorProxy)
Q1104501Trigger.defaultAlias = "Q1104501Trigger"
local Q11045ClientConfig = require("Quest/Client/Q11045ClientConfig")

local mainID = Q11045ClientConfig.MainID
local actorAlias = Q11045ClientConfig.ActorAlias
local subIDs = Q11045ClientConfig.SubIDs
local npcs = Q11045ClientConfig.Npcs
local gadgets = Q11045ClientConfig.Gadgets
local datas = Q11045ClientConfig.Datas

function Q1104501Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104501Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104501Trigger:TriggerIn()
    print("TriggerIn")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local actor = actorMgr:GetActor(actorAlias)
        actor:CreateQuestNpcById(1104501, npcs.Npc1018Data.id, 0)
        actor:RequestInteraction(npcs.Npc1018Data.alias)
    end)

    self:DestroySelf()
end

function Q1104501Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104501Trigger
