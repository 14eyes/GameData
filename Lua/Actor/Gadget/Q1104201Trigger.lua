require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104201Trigger = class("Q1104201Trigger", GadgetActorProxy)
Q1104201Trigger.defaultAlias = "Q1104201Trigger"
local Q11042ClientConfig = require("Quest/Client/Q11042ClientConfig")

local mainID = Q11042ClientConfig.MainID
local actorAlias = Q11042ClientConfig.ActorAlias
local subIDs = Q11042ClientConfig.SubIDs
local npcs = Q11042ClientConfig.Npcs
local gadgets = Q11042ClientConfig.Gadgets
local datas = Q11042ClientConfig.Datas

function Q1104201Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104201Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104201Trigger:TriggerIn()
    print("TriggerIn")
    self:ShowBlackScreen(0.5, 1.0, 0.5, function(arg1)
        local actor = actorMgr:GetActor(actorAlias)
        actor:CreateQuestNpcById(1104201, npcs.Npc1018Data.id, 0)
        actor:RequestInteraction(npcs.Npc1018Data.alias)
    end)

    self:DestroySelf()
end

function Q1104201Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104201Trigger
