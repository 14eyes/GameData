require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q1504202Trigger = class("Q1504202Trigger", GadgetActorProxy)
Q1504202Trigger.defaultAlias = "Q1504202Trigger"
local Q15042ClientConfig = require("Quest/Client/Q15042ClientConfig")

local this
local subIDs = Q15042ClientConfig.SubIDs
local datas = Q15042ClientConfig.Datas
local npcs = Q15042ClientConfig.Npcs
local points = Q15042ClientConfig.Points

function Q1504202Trigger:OnPostDataPrepare()
    print("Q1504202Trigger - OnPostDataPrepare")
    this = self
end

function Q1504202Trigger:OnPostComponentPrepare()
    print("Q1504202Trigger - OnPostComponentPrepare")
    this:AddCylinderShapeTrigger(8.243131, 20, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 15042)
end

function Q1504202Trigger:TriggerIn()
    print("Q1504202Trigger - TriggerIn")
    actorMgr:GetActor("15042"):PlayerEnterDungeonWithData(1601, 1248, 1504202, 1, datas.PlayerEnterDungeonData, nil, nil)
    this:DestroySelf()
end

function Q1504202Trigger:PreTriggerIn()
    print("Q1504202Trigger - PreTriggerIn")
end

function Q1504202Trigger:LightUpTriggerIn()
    print("Q1504202Trigger - LightUpTriggerIn")
end

function Q1504202Trigger:TriggerOut()
    print("Q1504202Trigger - TriggerOut")
end

return Q1504202Trigger
