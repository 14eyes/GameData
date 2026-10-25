require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710217Trigger = class("Q7710217Trigger", GadgetActorProxy)
Q7710217Trigger.defaultAlias = "Q7710217Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710217Trigger:OnPostDataPrepare()
    print("Q7710217Trigger - OnPostDataPrepare")
    this = self
end

function Q7710217Trigger:OnPostComponentPrepare()
    print("Q7710217Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(65, 50, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710217Trigger:TriggerIn()
    print("Q7710217Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710217)
    this:DestroySelf()
end

function Q7710217Trigger:PreTriggerIn()
    print("Q7710217Trigger - PreTriggerIn")
end

function Q7710217Trigger:LightUpTriggerIn()
    print("Q7710217Trigger - LightUpTriggerIn")
end

function Q7710217Trigger:TriggerOut()
    print("Q7710217Trigger - TriggerOut")
end

return Q7710217Trigger
