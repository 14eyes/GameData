require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022702Trigger = class("Q4022702Trigger", GadgetActorProxy)
Q4022702Trigger.defaultAlias = "Q4022702Trigger"
local Q40227ClientConfig = require("Quest/Client/Q40227ClientConfig")

local this
local subIDs = Q40227ClientConfig.SubIDs
local datas = Q40227ClientConfig.Datas
local npcs = Q40227ClientConfig.Npcs
local points = Q40227ClientConfig.Points

function Q4022702Trigger:OnPostDataPrepare()
    print("Q4022702Trigger - OnPostDataPrepare")
    this = self
end

function Q4022702Trigger:OnPostComponentPrepare()
    print("Q4022702Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40227)
end

function Q4022702Trigger:TriggerIn()
    print("Q4022702Trigger - TriggerIn")
    actorMgr:GetActor("40227"):TransmitPlayerWithQuestIdByData(4022702, 9, datas.TransmitData_BlackScreen, nil, nil, nil)
    this:DestroySelf()
end

function Q4022702Trigger:PreTriggerIn()
    print("Q4022702Trigger - PreTriggerIn")
end

function Q4022702Trigger:LightUpTriggerIn()
    print("Q4022702Trigger - LightUpTriggerIn")
end

function Q4022702Trigger:TriggerOut()
    print("Q4022702Trigger - TriggerOut")
end

return Q4022702Trigger
