require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1104104Trigger = class("Q1104104Trigger", GadgetActorProxy)
Q1104104Trigger.defaultAlias = "Q1104104Trigger"
local Q11041ClientConfig = require("Quest/Client/Q11041ClientConfig")

local mainID = Q11041ClientConfig.MainID
local actorAlias = Q11041ClientConfig.ActorAlias
local subIDs = Q11041ClientConfig.SubIDs
local npcs = Q11041ClientConfig.Npcs
local gadgets = Q11041ClientConfig.Gadgets
local datas = Q11041ClientConfig.Datas

function Q1104104Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
end

function Q1104104Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    self:AddComponentTrigger(18, DistType.EULER, {x = 0, y = 0.8, z = 0}, self.TriggerIn, self.TriggerOut)
end

function Q1104104Trigger:TriggerIn()
    actorMgr:GetActor(actorAlias):RequestInteraction("Npc1018")
    self:DestroySelf()
end

function Q1104104Trigger:TriggerOut()
    print("TriggerOut")
end

return Q1104104Trigger
