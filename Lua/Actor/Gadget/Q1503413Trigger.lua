require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503413Trigger = class("Q1503413Trigger", GadgetActorProxy)
Q1503413Trigger.defaultAlias = "Q1503413Trigger"
local Q15034ClientConfig = require("Quest/Client/Q15034ClientConfig")

local this
local subIDs = Q15034ClientConfig.SubIDs
local datas = Q15034ClientConfig.Datas
local npcs = Q15034ClientConfig.Npcs
local points = Q15034ClientConfig.Points

function Q1503413Trigger:OnPostDataPrepare()
    print("Q1503413Trigger - OnPostDataPrepare")
    this = self
end

function Q1503413Trigger:OnPostComponentPrepare()
    print("Q1503413Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15034)
end

function Q1503413Trigger:TriggerIn()
    print("Q1503413Trigger - TriggerIn")
    actorMgr:GetActor("15034"):PlayerEnterDungeonWithData(4, 1254, 1503413, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q1503413Trigger:PreTriggerIn()
    print("Q1503413Trigger - PreTriggerIn")
end

function Q1503413Trigger:LightUpTriggerIn()
    print("Q1503413Trigger - LightUpTriggerIn")
end

function Q1503413Trigger:TriggerOut()
    print("Q1503413Trigger - TriggerOut")
end

return Q1503413Trigger
