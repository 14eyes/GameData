require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4019002Trigger = class("Q4019002Trigger", GadgetActorProxy)
Q4019002Trigger.defaultAlias = "Q4019002Trigger"
local Q40190ClientConfig = require("Quest/Client/Q40190ClientConfig")

local this
local subIDs = Q40190ClientConfig.SubIDs
local datas = Q40190ClientConfig.Datas
local npcs = Q40190ClientConfig.Npcs
local points = Q40190ClientConfig.Points

function Q4019002Trigger:OnPostDataPrepare()
    print("Q4019002Trigger - OnPostDataPrepare")
    this = self
end

function Q4019002Trigger:OnPostComponentPrepare()
    print("Q4019002Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(65, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40190)
end

function Q4019002Trigger:TriggerIn()
    print("Q4019002Trigger - TriggerIn")
    actorMgr:GetActor("40190"):QuestNarratorTask(datas.NarratorWithId_4019003, nil)
    this:DestroySelf()
end

function Q4019002Trigger:PreTriggerIn()
    print("Q4019002Trigger - PreTriggerIn")
end

function Q4019002Trigger:LightUpTriggerIn()
    print("Q4019002Trigger - LightUpTriggerIn")
end

function Q4019002Trigger:TriggerOut()
    print("Q4019002Trigger - TriggerOut")
end

return Q4019002Trigger
