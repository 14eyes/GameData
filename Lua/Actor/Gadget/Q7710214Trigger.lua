require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710214Trigger = class("Q7710214Trigger", GadgetActorProxy)
Q7710214Trigger.defaultAlias = "Q7710214Trigger"
local Q77102ClientConfig = require("Quest/Client/Q77102ClientConfig")

local this
local subIDs = Q77102ClientConfig.SubIDs
local datas = Q77102ClientConfig.Datas
local npcs = Q77102ClientConfig.Npcs
local points = Q77102ClientConfig.Points

function Q7710214Trigger:OnPostDataPrepare()
    print("Q7710214Trigger - OnPostDataPrepare")
    this = self
end

function Q7710214Trigger:OnPostComponentPrepare()
    print("Q7710214Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(20, 40, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77102)
end

function Q7710214Trigger:TriggerIn()
    print("Q7710214Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7710214)
    this:DestroySelf()
end

function Q7710214Trigger:PreTriggerIn()
    print("Q7710214Trigger - PreTriggerIn")
end

function Q7710214Trigger:LightUpTriggerIn()
    print("Q7710214Trigger - LightUpTriggerIn")
end

function Q7710214Trigger:TriggerOut()
    print("Q7710214Trigger - TriggerOut")
end

return Q7710214Trigger
