require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503911Trigger = class("Q1503911Trigger", GadgetActorProxy)
Q1503911Trigger.defaultAlias = "Q1503911Trigger"
local Q15039ClientConfig = require("Quest/Client/Q15039ClientConfig")

local this
local subIDs = Q15039ClientConfig.SubIDs
local datas = Q15039ClientConfig.Datas
local npcs = Q15039ClientConfig.Npcs
local points = Q15039ClientConfig.Points

function Q1503911Trigger:OnPostDataPrepare()
    print("Q1503911Trigger - OnPostDataPrepare")
    this = self
end

function Q1503911Trigger:OnPostComponentPrepare()
    print("Q1503911Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(35, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15039)
end

function Q1503911Trigger:TriggerIn()
    print("Q1503911Trigger - TriggerIn")
    actorMgr:GetActor("15039"):QuestNarratorTask(datas.NarratorWithId_1503906, nil)
    this:DestroySelf()
end

function Q1503911Trigger:PreTriggerIn()
    print("Q1503911Trigger - PreTriggerIn")
end

function Q1503911Trigger:LightUpTriggerIn()
    print("Q1503911Trigger - LightUpTriggerIn")
end

function Q1503911Trigger:TriggerOut()
    print("Q1503911Trigger - TriggerOut")
end

return Q1503911Trigger
