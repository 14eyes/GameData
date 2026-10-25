require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504316Trigger = class("Q1504316Trigger", GadgetActorProxy)
Q1504316Trigger.defaultAlias = "Q1504316Trigger"
local Q15043ClientConfig = require("Quest/Client/Q15043ClientConfig")

local this
local subIDs = Q15043ClientConfig.SubIDs
local datas = Q15043ClientConfig.Datas
local npcs = Q15043ClientConfig.Npcs
local points = Q15043ClientConfig.Points

function Q1504316Trigger:OnPostDataPrepare()
    print("Q1504316Trigger - OnPostDataPrepare")
    this = self
end

function Q1504316Trigger:OnPostComponentPrepare()
    print("Q1504316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(105, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15043)
end

function Q1504316Trigger:TriggerIn()
    print("Q1504316Trigger - TriggerIn")
    actorMgr:GetActor("15043"):QuestNarratorTask(datas.NarratorWithId_1504306, nil)
    this:DestroySelf()
end

function Q1504316Trigger:PreTriggerIn()
    print("Q1504316Trigger - PreTriggerIn")
end

function Q1504316Trigger:LightUpTriggerIn()
    print("Q1504316Trigger - LightUpTriggerIn")
end

function Q1504316Trigger:TriggerOut()
    print("Q1504316Trigger - TriggerOut")
end

return Q1504316Trigger
