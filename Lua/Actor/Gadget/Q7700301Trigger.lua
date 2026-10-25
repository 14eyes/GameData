require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7700301Trigger = class("Q7700301Trigger", GadgetActorProxy)
Q7700301Trigger.defaultAlias = "Q7700301Trigger"
local Q77003ClientConfig = require("Quest/Client/Q77003ClientConfig")

local this
local subIDs = Q77003ClientConfig.SubIDs
local datas = Q77003ClientConfig.Datas
local npcs = Q77003ClientConfig.Npcs
local points = Q77003ClientConfig.Points

function Q7700301Trigger:OnPostDataPrepare()
    print("Q7700301Trigger - OnPostDataPrepare")
    this = self
end

function Q7700301Trigger:OnPostComponentPrepare()
    print("Q7700301Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77003)
end

function Q7700301Trigger:TriggerIn()
    print("Q7700301Trigger - TriggerIn")
    actorMgr:GetActor("77003"):TransmitPlayerWithQuestIdByData(7700301, 1, datas.TransmitData_1, nil, nil, nil)
    this:DestroySelf()
end

function Q7700301Trigger:PreTriggerIn()
    print("Q7700301Trigger - PreTriggerIn")
end

function Q7700301Trigger:LightUpTriggerIn()
    print("Q7700301Trigger - LightUpTriggerIn")
end

function Q7700301Trigger:TriggerOut()
    print("Q7700301Trigger - TriggerOut")
end

return Q7700301Trigger
