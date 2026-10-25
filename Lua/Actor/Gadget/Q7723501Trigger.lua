require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7723501Trigger = class("Q7723501Trigger", GadgetActorProxy)
Q7723501Trigger.defaultAlias = "Q7723501Trigger"
local Q77235ClientConfig = require("Quest/Client/Q77235ClientConfig")

local this
local subIDs = Q77235ClientConfig.SubIDs
local datas = Q77235ClientConfig.Datas
local npcs = Q77235ClientConfig.Npcs

function Q7723501Trigger:OnPostDataPrepare()
    print("Q7723501Trigger - OnPostDataPrepare")
    this = self
end

function Q7723501Trigger:OnPostComponentPrepare()
    print("Q7723501Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77235)
end

function Q7723501Trigger:TriggerIn()
    print("Q7723501Trigger - TriggerIn")
    actorMgr:GetActor("77235"):TransmitPlayerWithQuestIdByData(7723501, 1, datas.TransmitData_2, nil, nil, nil)
    this:DestroySelf()
end

function Q7723501Trigger:PreTriggerIn()
    print("Q7723501Trigger - PreTriggerIn")
end

function Q7723501Trigger:LightUpTriggerIn()
    print("Q7723501Trigger - LightUpTriggerIn")
end

function Q7723501Trigger:TriggerOut()
    print("Q7723501Trigger - TriggerOut")
end

return Q7723501Trigger
