require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7600201Trigger = class("Q7600201Trigger", GadgetActorProxy)
Q7600201Trigger.defaultAlias = "Q7600201Trigger"
local Q76002ClientConfig = require("Quest/Client/Q76002ClientConfig")

local this
local subIDs = Q76002ClientConfig.SubIDs
local datas = Q76002ClientConfig.Datas
local npcs = Q76002ClientConfig.Npcs
local points = Q76002ClientConfig.Points

function Q7600201Trigger:OnPostDataPrepare()
    print("Q7600201Trigger - OnPostDataPrepare")
    this = self
end

function Q7600201Trigger:OnPostComponentPrepare()
    print("Q7600201Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(26.893219, 49.51959, 10, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76002)
end

function Q7600201Trigger:TriggerIn()
    print("Q7600201Trigger - TriggerIn")
    actorMgr:GetActor("76002"):QuestNarratorTask(datas.NarratorWithId_7600201, nil)
    this:DestroySelf()
end

function Q7600201Trigger:PreTriggerIn()
    print("Q7600201Trigger - PreTriggerIn")
end

function Q7600201Trigger:LightUpTriggerIn()
    print("Q7600201Trigger - LightUpTriggerIn")
end

function Q7600201Trigger:TriggerOut()
    print("Q7600201Trigger - TriggerOut")
end

return Q7600201Trigger
