require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603518Trigger = class("Q603518Trigger", GadgetActorProxy)
Q603518Trigger.defaultAlias = "Q603518Trigger"
local Q6035ClientConfig = require("Quest/Client/Q6035ClientConfig")

local this
local subIDs = Q6035ClientConfig.SubIDs
local datas = Q6035ClientConfig.Datas
local npcs = Q6035ClientConfig.Npcs
local points = Q6035ClientConfig.Points

function Q603518Trigger:OnPostDataPrepare()
    print("Q603518Trigger - OnPostDataPrepare")
    this = self
end

function Q603518Trigger:OnPostComponentPrepare()
    print("Q603518Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6035)
end

function Q603518Trigger:TriggerIn()
    print("Q603518Trigger - TriggerIn")
    actorMgr:GetActor("6035"):CreateQuestNpcById(603518, 16768, 0, false, 0)
    actorMgr:GetActor("6035"):GetQuestNpcActor(npcs.Npc16768_1.alias, 6035):DoFreeStyle(1040, true, nil, true, true, false, false)
    this:DestroySelf()
end

function Q603518Trigger:PreTriggerIn()
    print("Q603518Trigger - PreTriggerIn")
end

function Q603518Trigger:LightUpTriggerIn()
    print("Q603518Trigger - LightUpTriggerIn")
end

function Q603518Trigger:TriggerOut()
    print("Q603518Trigger - TriggerOut")
end

return Q603518Trigger
