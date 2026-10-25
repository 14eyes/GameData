require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600318Trigger = class("Q1600318Trigger", GadgetActorProxy)
Q1600318Trigger.defaultAlias = "Q1600318Trigger"
local Q16003ClientConfig = require("Quest/Client/Q16003ClientConfig")

local this
local subIDs = Q16003ClientConfig.SubIDs
local datas = Q16003ClientConfig.Datas
local npcs = Q16003ClientConfig.Npcs
local points = Q16003ClientConfig.Points

function Q1600318Trigger:OnPostDataPrepare()
    print("Q1600318Trigger - OnPostDataPrepare")
    this = self
end

function Q1600318Trigger:OnPostComponentPrepare()
    print("Q1600318Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16003)
end

function Q1600318Trigger:TriggerIn()
    print("Q1600318Trigger - TriggerIn")
end

function Q1600318Trigger:PreTriggerIn()
    print("Q1600318Trigger - PreTriggerIn")
    actorMgr:GetActor("16003"):TransmitPlayerWithQuestIdByData(1600318, 1, datas.TransmitData_ToOutdoors, nil, nil, nil)
end

function Q1600318Trigger:LightUpTriggerIn()
    print("Q1600318Trigger - LightUpTriggerIn")
end

function Q1600318Trigger:TriggerOut()
    print("Q1600318Trigger - TriggerOut")
end

return Q1600318Trigger
