require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q4022913Trigger = class("Q4022913Trigger", GadgetActorProxy)
Q4022913Trigger.defaultAlias = "Q4022913Trigger"
local Q40229ClientConfig = require("Quest/Client/Q40229ClientConfig")

local this
local subIDs = Q40229ClientConfig.SubIDs
local datas = Q40229ClientConfig.Datas
local npcs = Q40229ClientConfig.Npcs
local points = Q40229ClientConfig.Points

function Q4022913Trigger:OnPostDataPrepare()
    print("Q4022913Trigger - OnPostDataPrepare")
    this = self
end

function Q4022913Trigger:OnPostComponentPrepare()
    print("Q4022913Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(60, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 40229)
end

function Q4022913Trigger:TriggerIn()
    print("Q4022913Trigger - TriggerIn")
    actorMgr:GetActor("40229"):PlayerEnterDungeonWithData(1839, 1301, 4022901, 1, datas.TransmitWithUI, nil, nil)
    this:DestroySelf()
end

function Q4022913Trigger:PreTriggerIn()
    print("Q4022913Trigger - PreTriggerIn")
end

function Q4022913Trigger:LightUpTriggerIn()
    print("Q4022913Trigger - LightUpTriggerIn")
end

function Q4022913Trigger:TriggerOut()
    print("Q4022913Trigger - TriggerOut")
end

return Q4022913Trigger
