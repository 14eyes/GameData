require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1503703Trigger = class("Q1503703Trigger", GadgetActorProxy)
Q1503703Trigger.defaultAlias = "Q1503703Trigger"
local Q15037ClientConfig = require("Quest/Client/Q15037ClientConfig")

local this
local subIDs = Q15037ClientConfig.SubIDs
local datas = Q15037ClientConfig.Datas
local npcs = Q15037ClientConfig.Npcs
local points = Q15037ClientConfig.Points

function Q1503703Trigger:OnPostDataPrepare()
    print("Q1503703Trigger - OnPostDataPrepare")
    this = self
end

function Q1503703Trigger:OnPostComponentPrepare()
    print("Q1503703Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15037)
end

function Q1503703Trigger:TriggerIn()
    print("Q1503703Trigger - TriggerIn")
    actorMgr:GetActor("15037"):PlayerEnterDungeonWithData(3, 1251, 1503703, 1, datas.PlayerEnterDungeonData_1, nil, nil)
    this:DestroySelf()
end

function Q1503703Trigger:PreTriggerIn()
    print("Q1503703Trigger - PreTriggerIn")
end

function Q1503703Trigger:LightUpTriggerIn()
    print("Q1503703Trigger - LightUpTriggerIn")
end

function Q1503703Trigger:TriggerOut()
    print("Q1503703Trigger - TriggerOut")
end

return Q1503703Trigger
