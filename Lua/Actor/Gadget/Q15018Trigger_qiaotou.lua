require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q15018Trigger_qiaotou = class("Q15018Trigger_qiaotou", GadgetActorProxy)
Q15018Trigger_qiaotou.defaultAlias = "Q15018Trigger_qiaotou"
local Q15018ClientConfig = require("Quest/Client/Q15018ClientConfig")

local this
local subIDs = Q15018ClientConfig.SubIDs
local datas = Q15018ClientConfig.Datas
local npcs = Q15018ClientConfig.Npcs
local points = Q15018ClientConfig.Points

function Q15018Trigger_qiaotou:OnPostDataPrepare()
    print("Q15018Trigger_qiaotou - OnPostDataPrepare")
    this = self
end

function Q15018Trigger_qiaotou:OnPostComponentPrepare()
    print("Q15018Trigger_qiaotou - OnPostComponentPrepare")
    this:AddComponentTrigger(12, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15018)
end

function Q15018Trigger_qiaotou:TriggerIn()
    print("Q15018Trigger_qiaotou - TriggerIn")
    actorMgr:GetActor("15018"):RequestInteraction("Npc1098", "", true)
    this:DestroySelf()
end

function Q15018Trigger_qiaotou:PreTriggerIn()
    print("Q15018Trigger_qiaotou - PreTriggerIn")
end

function Q15018Trigger_qiaotou:LightUpTriggerIn()
    print("Q15018Trigger_qiaotou - LightUpTriggerIn")
end

function Q15018Trigger_qiaotou:TriggerOut()
    print("Q15018Trigger_qiaotou - TriggerOut")
end

return Q15018Trigger_qiaotou
