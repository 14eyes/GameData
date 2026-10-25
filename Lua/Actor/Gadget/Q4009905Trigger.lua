require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4009905Trigger = class("Q4009905Trigger", GadgetActorProxy)
Q4009905Trigger.defaultAlias = "Q4009905Trigger"
local Q40099ClientConfig = require("Quest/Client/Q40099ClientConfig")

local this
local subIDs = Q40099ClientConfig.SubIDs
local npcs = Q40099ClientConfig.Npcs
local datas = Q40099ClientConfig.Datas

function Q4009905Trigger:OnPostDataPrepare()
    print("OnPostDataPrepare")
    this = self
end

function Q4009905Trigger:OnPostComponentPrepare()
    print("OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0.0, y = 0.0, z = 0.0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn)
end

function Q4009905Trigger:TriggerIn()
    print("TriggerIn")
    actorMgr:GetActor("40099"):NarratorOnlyTaskByData(datas.NarratorWithId02, nil, 40099)
    actorUtils.FinishQuestID(false, 4009911)
    this:DestroySelf()
end

function Q4009905Trigger:PreTriggerIn()
    print("PreTriggerIn")
end

function Q4009905Trigger:LightUpTriggerIn()
    print("LightUpTriggerIn")
end

function Q4009905Trigger:TriggerOut()
    print("TriggerOut")
end

return Q4009905Trigger
