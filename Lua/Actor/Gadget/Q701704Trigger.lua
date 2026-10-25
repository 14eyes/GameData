require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701704Trigger = class("Q701704Trigger", GadgetActorProxy)
Q701704Trigger.defaultAlias = "Q701704Trigger"
local Q7017ClientConfig = require("Quest/Client/Q7017ClientConfig")

local this
local subIDs = Q7017ClientConfig.SubIDs
local datas = Q7017ClientConfig.Datas
local npcs = Q7017ClientConfig.Npcs
local points = Q7017ClientConfig.Points

function Q701704Trigger:OnPostDataPrepare()
    print("Q701704Trigger - OnPostDataPrepare")
    this = self
end

function Q701704Trigger:OnPostComponentPrepare()
    print("Q701704Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7017)
end

function Q701704Trigger:TriggerIn()
    print("Q701704Trigger - TriggerIn")
    actorMgr:GetActor("7017"):QuestNarratorTask(datas.NarratorWithId_701702, nil)
    this:DestroySelf()
end

function Q701704Trigger:PreTriggerIn()
    print("Q701704Trigger - PreTriggerIn")
end

function Q701704Trigger:LightUpTriggerIn()
    print("Q701704Trigger - LightUpTriggerIn")
end

function Q701704Trigger:TriggerOut()
    print("Q701704Trigger - TriggerOut")
end

return Q701704Trigger
