require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4017918Trigger = class("Q4017918Trigger", GadgetActorProxy)
Q4017918Trigger.defaultAlias = "Q4017918Trigger"
local Q40179ClientConfig = require("Quest/Client/Q40179ClientConfig")

local this
local subIDs = Q40179ClientConfig.SubIDs
local datas = Q40179ClientConfig.Datas
local npcs = Q40179ClientConfig.Npcs
local points = Q40179ClientConfig.Points

function Q4017918Trigger:OnPostDataPrepare()
    print("Q4017918Trigger - OnPostDataPrepare")
    this = self
end

function Q4017918Trigger:OnPostComponentPrepare()
    print("Q4017918Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40179)
end

function Q4017918Trigger:TriggerIn()
    print("Q4017918Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4017918)
    this:DestroySelf()
end

function Q4017918Trigger:PreTriggerIn()
    print("Q4017918Trigger - PreTriggerIn")
end

function Q4017918Trigger:LightUpTriggerIn()
    print("Q4017918Trigger - LightUpTriggerIn")
end

function Q4017918Trigger:TriggerOut()
    print("Q4017918Trigger - TriggerOut")
end

return Q4017918Trigger
