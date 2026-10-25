require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104301Trigger = class("Q1104301Trigger", GadgetActorProxy)
Q1104301Trigger.defaultAlias = "Q1104301Trigger"
local Q11043ClientConfig = require("Quest/Client/Q11043ClientConfig")

local mainID = Q11043ClientConfig.MainID
local actorAlias = Q11043ClientConfig.ActorAlias
local subIDs = Q11043ClientConfig.SubIDs
local npcs = Q11043ClientConfig.Npcs
local gadgets = Q11043ClientConfig.Gadgets
local datas = Q11043ClientConfig.Datas

function Q1104301Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104301Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(3, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104301Trigger:TriggerIn()
    print("TriggerIn")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local actor = actorMgr:GetActor(actorAlias)
        actor:CreateQuestNpcById(1104301, npcs.Npc1018Data.id, 0)
        actor:RequestInteraction(npcs.Npc1018Data.alias)
    end)

    self:DestroySelf()
end

function Q1104301Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104301Trigger
