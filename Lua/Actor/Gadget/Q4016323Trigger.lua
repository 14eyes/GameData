require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4016323Trigger = class("Q4016323Trigger", GadgetActorProxy)
Q4016323Trigger.defaultAlias = "Q4016323Trigger"
local Q40163ClientConfig = require("Quest/Client/Q40163ClientConfig")

local this
local subIDs = Q40163ClientConfig.SubIDs
local datas = Q40163ClientConfig.Datas
local npcs = Q40163ClientConfig.Npcs
local points = Q40163ClientConfig.Points

function Q4016323Trigger:OnPostDataPrepare()
    print("Q4016323Trigger - OnPostDataPrepare")
    this = self
end

function Q4016323Trigger:OnPostComponentPrepare()
    print("Q4016323Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(266, 266, 120, false, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40163)
end

function Q4016323Trigger:TriggerIn()
    print("Q4016323Trigger - TriggerIn")
    actorMgr:GetActor("40163"):TransmitPlayerByQuestId(4016323, 2, nil, nil, nil)
    this:DestroySelf()
end

function Q4016323Trigger:PreTriggerIn()
    print("Q4016323Trigger - PreTriggerIn")
end

function Q4016323Trigger:LightUpTriggerIn()
    print("Q4016323Trigger - LightUpTriggerIn")
end

function Q4016323Trigger:TriggerOut()
    print("Q4016323Trigger - TriggerOut")
end

return Q4016323Trigger
