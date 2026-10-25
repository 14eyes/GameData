require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600019Trigger = class("Q1600019Trigger", GadgetActorProxy)
Q1600019Trigger.defaultAlias = "Q1600019Trigger"
local Q16000ClientConfig = require("Quest/Client/Q16000ClientConfig")

local this
local subIDs = Q16000ClientConfig.SubIDs
local datas = Q16000ClientConfig.Datas
local npcs = Q16000ClientConfig.Npcs
local points = Q16000ClientConfig.Points

function Q1600019Trigger:OnPostDataPrepare()
    print("Q1600019Trigger - OnPostDataPrepare")
    this = self
end

function Q1600019Trigger:OnPostComponentPrepare()
    print("Q1600019Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(20, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16000)
end

function Q1600019Trigger:TriggerIn()
    print("Q1600019Trigger - TriggerIn")
    actorMgr:GetActor("16000"):PlayerEnterDungeonWithData(1795, 2205, 1600019, 1, datas.PlayerEnterDungeonData_Reception, nil, nil)
end

function Q1600019Trigger:PreTriggerIn()
    print("Q1600019Trigger - PreTriggerIn")
end

function Q1600019Trigger:LightUpTriggerIn()
    print("Q1600019Trigger - LightUpTriggerIn")
end

function Q1600019Trigger:TriggerOut()
    print("Q1600019Trigger - TriggerOut")
end

return Q1600019Trigger
