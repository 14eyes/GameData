require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1600440Trigger = class("Q1600440Trigger", GadgetActorProxy)
Q1600440Trigger.defaultAlias = "Q1600440Trigger"
local Q16004ClientConfig = require("Quest/Client/Q16004ClientConfig")

local this
local subIDs = Q16004ClientConfig.SubIDs
local datas = Q16004ClientConfig.Datas
local npcs = Q16004ClientConfig.Npcs
local points = Q16004ClientConfig.Points

function Q1600440Trigger:OnPostDataPrepare()
    print("Q1600440Trigger - OnPostDataPrepare")
    this = self
end

function Q1600440Trigger:OnPostComponentPrepare()
    print("Q1600440Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(10, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 16004)
end

function Q1600440Trigger:TriggerIn()
    print("Q1600440Trigger - TriggerIn")
    actorMgr:GetActor("16004"):PlayerEnterDungeonWithData(1882, 2205, 1600440, 1, datas.PlayerEnterDungeonData_Workshop, nil, nil)
end

function Q1600440Trigger:PreTriggerIn()
    print("Q1600440Trigger - PreTriggerIn")
end

function Q1600440Trigger:LightUpTriggerIn()
    print("Q1600440Trigger - LightUpTriggerIn")
end

function Q1600440Trigger:TriggerOut()
    print("Q1600440Trigger - TriggerOut")
end

return Q1600440Trigger
