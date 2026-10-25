require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q76152011Trigger = class("Q76152011Trigger", GadgetActorProxy)
Q76152011Trigger.defaultAlias = "Q76152011Trigger"
local Q76152ClientConfig = require("Quest/Client/Q76152ClientConfig")

local this
local subIDs = Q76152ClientConfig.SubIDs
local datas = Q76152ClientConfig.Datas
local npcs = Q76152ClientConfig.Npcs
local points = Q76152ClientConfig.Points

function Q76152011Trigger:OnPostDataPrepare()
    print("Q76152011Trigger - OnPostDataPrepare")
    this = self
end

function Q76152011Trigger:OnPostComponentPrepare()
    print("Q76152011Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(10, 13.692175, 30, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76152)
end

function Q76152011Trigger:TriggerIn()
    print("Q76152011Trigger - TriggerIn")
    actorUtils.FinishQuestID(false, 7615201)
    this:DestroySelf()
end

function Q76152011Trigger:PreTriggerIn()
    print("Q76152011Trigger - PreTriggerIn")
end

function Q76152011Trigger:LightUpTriggerIn()
    print("Q76152011Trigger - LightUpTriggerIn")
end

function Q76152011Trigger:TriggerOut()
    print("Q76152011Trigger - TriggerOut")
end

return Q76152011Trigger
