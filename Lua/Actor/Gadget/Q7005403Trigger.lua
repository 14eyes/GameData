require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7005403Trigger = class("Q7005403Trigger", GadgetActorProxy)
Q7005403Trigger.defaultAlias = "Q7005403Trigger"
local Q70054ClientConfig = require("Quest/Client/Q70054ClientConfig")

local this
local subIDs = Q70054ClientConfig.SubIDs
local npcs = Q70054ClientConfig.Npcs
local points = Q70054ClientConfig.Points

function Q7005403Trigger:OnPostDataPrepare()
    print("Q7005403Trigger - OnPostDataPrepare")
    this = self
end

function Q7005403Trigger:OnPostComponentPrepare()
    print("Q7005403Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 5, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 70054)
end

function Q7005403Trigger:TriggerIn()
    print("Q7005403Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7005403)
    this:DestroySelf()
end

function Q7005403Trigger:PreTriggerIn()
    print("Q7005403Trigger - PreTriggerIn")
end

function Q7005403Trigger:LightUpTriggerIn()
    print("Q7005403Trigger - LightUpTriggerIn")
end

function Q7005403Trigger:TriggerOut()
    print("Q7005403Trigger - TriggerOut")
end

return Q7005403Trigger
