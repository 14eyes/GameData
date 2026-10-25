require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016330Trigger = class("Q4016330Trigger", GadgetActorProxy)
Q4016330Trigger.defaultAlias = "Q4016330Trigger"
local Q40163ClientConfig = require("Quest/Client/Q40163ClientConfig")

local this
local subIDs = Q40163ClientConfig.SubIDs
local datas = Q40163ClientConfig.Datas
local npcs = Q40163ClientConfig.Npcs
local points = Q40163ClientConfig.Points

function Q4016330Trigger:OnPostDataPrepare()
    print("Q4016330Trigger - OnPostDataPrepare")
    this = self
end

function Q4016330Trigger:OnPostComponentPrepare()
    print("Q4016330Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(80, 50, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40163)
end

function Q4016330Trigger:TriggerIn()
    print("Q4016330Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 4016330)
    this:DestroySelf()
end

function Q4016330Trigger:PreTriggerIn()
    print("Q4016330Trigger - PreTriggerIn")
end

function Q4016330Trigger:LightUpTriggerIn()
    print("Q4016330Trigger - LightUpTriggerIn")
end

function Q4016330Trigger:TriggerOut()
    print("Q4016330Trigger - TriggerOut")
end

return Q4016330Trigger
