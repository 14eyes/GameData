require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700101Trigger = class("Q7700101Trigger", GadgetActorProxy)
Q7700101Trigger.defaultAlias = "Q7700101Trigger"
local Q77001ClientConfig = require("Quest/Client/Q77001ClientConfig")

local this
local subIDs = Q77001ClientConfig.SubIDs
local datas = Q77001ClientConfig.Datas
local npcs = Q77001ClientConfig.Npcs
local points = Q77001ClientConfig.Points

function Q7700101Trigger:OnPostDataPrepare()
    print("Q7700101Trigger - OnPostDataPrepare")
    this = self
end

function Q7700101Trigger:OnPostComponentPrepare()
    print("Q7700101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77001)
end

function Q7700101Trigger:TriggerIn()
    print("Q7700101Trigger - TriggerIn")
    actorMgr:GetActor("77001"):TransmitPlayerWithQuestIdByData(7700101, 1, datas.TransmitData, nil, nil, nil)
    this:DestroySelf()
end

function Q7700101Trigger:PreTriggerIn()
    print("Q7700101Trigger - PreTriggerIn")
end

function Q7700101Trigger:LightUpTriggerIn()
    print("Q7700101Trigger - LightUpTriggerIn")
end

function Q7700101Trigger:TriggerOut()
    print("Q7700101Trigger - TriggerOut")
end

return Q7700101Trigger
