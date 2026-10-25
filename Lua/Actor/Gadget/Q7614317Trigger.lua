require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7614317Trigger = class("Q7614317Trigger", GadgetActorProxy)
Q7614317Trigger.defaultAlias = "Q7614317Trigger"
local Q76143ClientConfig = require("Quest/Client/Q76143ClientConfig")

local this
local subIDs = Q76143ClientConfig.SubIDs
local datas = Q76143ClientConfig.Datas
local npcs = Q76143ClientConfig.Npcs
local points = Q76143ClientConfig.Points

function Q7614317Trigger:OnPostDataPrepare()
    print("Q7614317Trigger - OnPostDataPrepare")
    this = self
end

function Q7614317Trigger:OnPostComponentPrepare()
    print("Q7614317Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(250, 250, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 76143)
end

function Q7614317Trigger:TriggerIn()
    print("Q7614317Trigger - TriggerIn")
    actorMgr:GetActor("76143"):PlayerEnterDungeonWithData(40, 1259, 7614317, 1, datas.Transmit1, nil, nil)
    this:DestroySelf()
end

function Q7614317Trigger:PreTriggerIn()
    print("Q7614317Trigger - PreTriggerIn")
end

function Q7614317Trigger:LightUpTriggerIn()
    print("Q7614317Trigger - LightUpTriggerIn")
end

function Q7614317Trigger:TriggerOut()
    print("Q7614317Trigger - TriggerOut")
end

return Q7614317Trigger
