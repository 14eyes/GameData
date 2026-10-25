require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4024102Trigger = class("Q4024102Trigger", GadgetActorProxy)
Q4024102Trigger.defaultAlias = "Q4024102Trigger"
local Q40241ClientConfig = require("Quest/Client/Q40241ClientConfig")

local this
local subIDs = Q40241ClientConfig.SubIDs
local datas = Q40241ClientConfig.Datas
local npcs = Q40241ClientConfig.Npcs
local points = Q40241ClientConfig.Points

function Q4024102Trigger:OnPostDataPrepare()
    print("Q4024102Trigger - OnPostDataPrepare")
    this = self
end

function Q4024102Trigger:OnPostComponentPrepare()
    print("Q4024102Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40241)
end

function Q4024102Trigger:TriggerIn()
    print("Q4024102Trigger - TriggerIn")
    actorMgr:GetActor("40241"):QuestNarratorTask(datas.NarratorWithId_4024101, nil)
    this:DestroySelf()
end

function Q4024102Trigger:PreTriggerIn()
    print("Q4024102Trigger - PreTriggerIn")
end

function Q4024102Trigger:LightUpTriggerIn()
    print("Q4024102Trigger - LightUpTriggerIn")
end

function Q4024102Trigger:TriggerOut()
    print("Q4024102Trigger - TriggerOut")
end

return Q4024102Trigger
