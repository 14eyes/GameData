require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7667306Trigger = class("Q7667306Trigger", GadgetActorProxy)
Q7667306Trigger.defaultAlias = "Q7667306Trigger"
local Q76673ClientConfig = require("Quest/Client/Q76673ClientConfig")

local this
local subIDs = Q76673ClientConfig.SubIDs
local datas = Q76673ClientConfig.Datas
local npcs = Q76673ClientConfig.Npcs
local points = Q76673ClientConfig.Points

function Q7667306Trigger:OnPostDataPrepare()
    print("Q7667306Trigger - OnPostDataPrepare")
    this = self
end

function Q7667306Trigger:OnPostComponentPrepare()
    print("Q7667306Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76673)
end

function Q7667306Trigger:TriggerIn()
    print("Q7667306Trigger - TriggerIn")
    actorMgr:GetActor("76673"):QuestNarratorTask(datas.NarratorWithId_7667304, nil)
    this:DestroySelf()
end

function Q7667306Trigger:PreTriggerIn()
    print("Q7667306Trigger - PreTriggerIn")
end

function Q7667306Trigger:LightUpTriggerIn()
    print("Q7667306Trigger - LightUpTriggerIn")
end

function Q7667306Trigger:TriggerOut()
    print("Q7667306Trigger - TriggerOut")
end

return Q7667306Trigger
