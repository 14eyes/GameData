require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q77668Triggerblack = class("Q77668Triggerblack", GadgetActorProxy)
Q77668Triggerblack.defaultAlias = "Q77668Triggerblack"
local Q77668ClientConfig = require("Quest/Client/Q77668ClientConfig")

local this
local subIDs = Q77668ClientConfig.SubIDs
local datas = Q77668ClientConfig.Datas
local npcs = Q77668ClientConfig.Npcs
local points = Q77668ClientConfig.Points

function Q77668Triggerblack:OnPostDataPrepare()
    print("Q77668Triggerblack - OnPostDataPrepare")
    this = self
end

function Q77668Triggerblack:OnPostComponentPrepare()
    print("Q77668Triggerblack - OnPostComponentPrepare")
    this:AddComponentTrigger(100, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77668)
end

function Q77668Triggerblack:TriggerIn()
    print("Q77668Triggerblack - TriggerIn")
    this:DestroySelf()
    actorMgr:GetActor("77668"):ShowBlackScreenWithDialogText(0.5, 2, 0.5, nil, nil, nil, 776680120, false, true)
end

function Q77668Triggerblack:PreTriggerIn()
    print("Q77668Triggerblack - PreTriggerIn")
end

function Q77668Triggerblack:LightUpTriggerIn()
    print("Q77668Triggerblack - LightUpTriggerIn")
end

function Q77668Triggerblack:TriggerOut()
    print("Q77668Triggerblack - TriggerOut")
end

return Q77668Triggerblack
