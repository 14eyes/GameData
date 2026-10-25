require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600318Trigger_1 = class("Q1600318Trigger_1", GadgetActorProxy)
Q1600318Trigger_1.defaultAlias = "Q1600318Trigger_1"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600318Trigger_1:OnPostDataPrepare()
    print("Q1600318Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q1600318Trigger_1:OnPostComponentPrepare()
    print("Q1600318Trigger_1 - OnPostComponentPrepare")
    this:AddComponentTrigger(25, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600318Trigger_1:TriggerIn()
    print("Q1600318Trigger_1 - TriggerIn")
end

function Q1600318Trigger_1:PreTriggerIn()
    print("Q1600318Trigger_1 - PreTriggerIn")
    actorMgr:GetActor("16003"):TransmitPlayerWithQuestIdByData(1600318, 1, datas.TransmitData_ToOutdoors, nil, nil, nil)
end

function Q1600318Trigger_1:LightUpTriggerIn()
    print("Q1600318Trigger_1 - LightUpTriggerIn")
end

function Q1600318Trigger_1:TriggerOut()
    print("Q1600318Trigger_1 - TriggerOut")
end

return Q1600318Trigger_1
