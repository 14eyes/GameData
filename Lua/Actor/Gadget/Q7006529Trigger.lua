require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7006529Trigger = class("Q7006529Trigger", GadgetActorProxy)
Q7006529Trigger.defaultAlias = "Q7006529Trigger"
local Q70065ClientConfig = require("Quest/Client/Q70065ClientConfig")

local this
local subIDs = Q70065ClientConfig.SubIDs
local datas = Q70065ClientConfig.Datas
local npcs = Q70065ClientConfig.Npcs
local points = Q70065ClientConfig.Points

function Q7006529Trigger:OnPostDataPrepare()
    print("Q7006529Trigger - OnPostDataPrepare")
    this = self
end

function Q7006529Trigger:OnPostComponentPrepare()
    print("Q7006529Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(37.052864, 27.925848, 22.571342, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70065)
end

function Q7006529Trigger:TriggerIn()
    print("Q7006529Trigger - TriggerIn")
    actorMgr:GetActor("70065"):QuestNarratorTask(datas.NarratorWithId_7006529, nil)
    this:DestroySelf()
end

function Q7006529Trigger:PreTriggerIn()
    print("Q7006529Trigger - PreTriggerIn")
end

function Q7006529Trigger:LightUpTriggerIn()
    print("Q7006529Trigger - LightUpTriggerIn")
end

function Q7006529Trigger:TriggerOut()
    print("Q7006529Trigger - TriggerOut")
end

return Q7006529Trigger
