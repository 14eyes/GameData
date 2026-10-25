require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7723701Trigger = class("Q7723701Trigger", GadgetActorProxy)
Q7723701Trigger.defaultAlias = "Q7723701Trigger"
local Q77237ClientConfig = require("Quest/Client/Q77237ClientConfig")

local this
local subIDs = Q77237ClientConfig.SubIDs
local datas = Q77237ClientConfig.Datas
local npcs = Q77237ClientConfig.Npcs
local points = Q77237ClientConfig.Points

function Q7723701Trigger:OnPostDataPrepare()
    print("Q7723701Trigger - OnPostDataPrepare")
    this = self
end

function Q7723701Trigger:OnPostComponentPrepare()
    print("Q7723701Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77237)
end

function Q7723701Trigger:TriggerIn()
    print("Q7723701Trigger - TriggerIn")
    actorMgr:GetActor("77237"):TransmitPlayerWithQuestIdByData(7723701, 1, datas.TransmitData_4, nil, nil, nil)
    this:DestroySelf()
end

function Q7723701Trigger:PreTriggerIn()
    print("Q7723701Trigger - PreTriggerIn")
end

function Q7723701Trigger:LightUpTriggerIn()
    print("Q7723701Trigger - LightUpTriggerIn")
end

function Q7723701Trigger:TriggerOut()
    print("Q7723701Trigger - TriggerOut")
end

return Q7723701Trigger
