require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7602405Trigger = class("Q7602405Trigger", GadgetActorProxy)
Q7602405Trigger.defaultAlias = "Q7602405Trigger"
local Q76024ClientConfig = require("Quest/Client/Q76024ClientConfig")

local this
local subIDs = Q76024ClientConfig.SubIDs
local datas = Q76024ClientConfig.Datas
local npcs = Q76024ClientConfig.Npcs
local points = Q76024ClientConfig.Points

function Q7602405Trigger:OnPostDataPrepare()
    print("Q7602405Trigger - OnPostDataPrepare")
    this = self
end

function Q7602405Trigger:OnPostComponentPrepare()
    print("Q7602405Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76024)
end

function Q7602405Trigger:TriggerIn()
    print("Q7602405Trigger - TriggerIn")
    actorMgr:GetActor("76024"):QuestNarratorTask(datas.NarratorWithId_760240126, nil)
    this:DestroySelf()
end

function Q7602405Trigger:PreTriggerIn()
    print("Q7602405Trigger - PreTriggerIn")
end

function Q7602405Trigger:LightUpTriggerIn()
    print("Q7602405Trigger - LightUpTriggerIn")
end

function Q7602405Trigger:TriggerOut()
    print("Q7602405Trigger - TriggerOut")
end

return Q7602405Trigger
