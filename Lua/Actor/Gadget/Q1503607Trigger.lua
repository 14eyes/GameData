require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503607Trigger = class("Q1503607Trigger", GadgetActorProxy)
Q1503607Trigger.defaultAlias = "Q1503607Trigger"
local Q15036ClientConfig = require("Quest/Client/Q15036ClientConfig")

local this
local subIDs = Q15036ClientConfig.SubIDs
local datas = Q15036ClientConfig.Datas
local npcs = Q15036ClientConfig.Npcs
local points = Q15036ClientConfig.Points

function Q1503607Trigger:OnPostDataPrepare()
    print("Q1503607Trigger - OnPostDataPrepare")
    this = self
end

function Q1503607Trigger:OnPostComponentPrepare()
    print("Q1503607Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15036)
end

function Q1503607Trigger:TriggerIn()
    print("Q1503607Trigger - TriggerIn")
    actorMgr:GetActor("15036"):PlayerEnterDungeonWithData(1630, 1252, 1503607, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q1503607Trigger:PreTriggerIn()
    print("Q1503607Trigger - PreTriggerIn")
end

function Q1503607Trigger:LightUpTriggerIn()
    print("Q1503607Trigger - LightUpTriggerIn")
end

function Q1503607Trigger:TriggerOut()
    print("Q1503607Trigger - TriggerOut")
end

return Q1503607Trigger
