require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503412Trigger = class("Q1503412Trigger", GadgetActorProxy)
Q1503412Trigger.defaultAlias = "Q1503412Trigger"
local Q15034ClientConfig = require("Quest/Client/Q15034ClientConfig")

local this
local subIDs = Q15034ClientConfig.SubIDs
local datas = Q15034ClientConfig.Datas
local npcs = Q15034ClientConfig.Npcs
local points = Q15034ClientConfig.Points

function Q1503412Trigger:OnPostDataPrepare()
    print("Q1503412Trigger - OnPostDataPrepare")
    this = self
end

function Q1503412Trigger:OnPostComponentPrepare()
    print("Q1503412Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15034)
end

function Q1503412Trigger:TriggerIn()
    print("Q1503412Trigger - TriggerIn")
    actorMgr:GetActor("15034"):PlayerEnterDungeonWithData(2, 1252, 1503412, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q1503412Trigger:PreTriggerIn()
    print("Q1503412Trigger - PreTriggerIn")
end

function Q1503412Trigger:LightUpTriggerIn()
    print("Q1503412Trigger - LightUpTriggerIn")
end

function Q1503412Trigger:TriggerOut()
    print("Q1503412Trigger - TriggerOut")
end

return Q1503412Trigger
