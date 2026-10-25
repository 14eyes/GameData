require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7616101Trigger = class("Q7616101Trigger", GadgetActorProxy)
Q7616101Trigger.defaultAlias = "Q7616101Trigger"
local Q76161ClientConfig = require("Quest/Client/Q76161ClientConfig")

local this
local subIDs = Q76161ClientConfig.SubIDs
local datas = Q76161ClientConfig.Datas
local points = Q76161ClientConfig.Points

function Q7616101Trigger:OnPostDataPrepare()
    print("Q7616101Trigger - OnPostDataPrepare")
    this = self
end

function Q7616101Trigger:OnPostComponentPrepare()
    print("Q7616101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(47.120388, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76161)
end

function Q7616101Trigger:TriggerIn()
    print("Q7616101Trigger - TriggerIn")
    actorMgr:GetActor("76161"):QuestNarratorTask(datas.NarratorWithId_761619901, nil)
    this:DestroySelf()
end

function Q7616101Trigger:PreTriggerIn()
    print("Q7616101Trigger - PreTriggerIn")
end

function Q7616101Trigger:LightUpTriggerIn()
    print("Q7616101Trigger - LightUpTriggerIn")
end

function Q7616101Trigger:TriggerOut()
    print("Q7616101Trigger - TriggerOut")
end

return Q7616101Trigger
