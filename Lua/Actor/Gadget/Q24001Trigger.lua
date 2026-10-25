require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q24001Trigger = class("Q24001Trigger", GadgetActorProxy)
Q24001Trigger.defaultAlias = "Q24001Trigger"
local Q24001ClientConfig = require("Quest/Client/Q24001ClientConfig")

local this
local subIDs = Q24001ClientConfig.SubIDs
local datas = Q24001ClientConfig.Datas
local npcs = Q24001ClientConfig.Npcs
local points = Q24001ClientConfig.Points

function Q24001Trigger:OnPostDataPrepare()
    print("Q24001Trigger - OnPostDataPrepare")
    this = self
end

function Q24001Trigger:OnPostComponentPrepare()
    print("Q24001Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 24001)
end

function Q24001Trigger:TriggerIn()
    print("Q24001Trigger - TriggerIn")
end

function Q24001Trigger:PreTriggerIn()
    print("Q24001Trigger - PreTriggerIn")
end

function Q24001Trigger:LightUpTriggerIn()
    print("Q24001Trigger - LightUpTriggerIn")
end

function Q24001Trigger:TriggerOut()
    print("Q24001Trigger - TriggerOut")
    actorMgr:GetActor("24001"):ClearNarratorTask()
end

return Q24001Trigger
