require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601411Trigger = class("Q601411Trigger", GadgetActorProxy)
Q601411Trigger.defaultAlias = "Q601411Trigger"
local Q6014ClientConfig = require("Quest/Client/Q6014ClientConfig")

local this
local subIDs = Q6014ClientConfig.SubIDs
local datas = Q6014ClientConfig.Datas
local npcs = Q6014ClientConfig.Npcs
local points = Q6014ClientConfig.Points

function Q601411Trigger:OnPostDataPrepare()
    print("Q601411Trigger - OnPostDataPrepare")
    this = self
end

function Q601411Trigger:OnPostComponentPrepare()
    print("Q601411Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6014)
end

function Q601411Trigger:TriggerIn()
    print("Q601411Trigger - TriggerIn")
    actorMgr:GetActor("6014"):PlayerEnterDungeonWithData(10, 1274, 601411, 8, datas.TransmitDataBlackScreen, nil, nil)
    this:DestroySelf()
end

function Q601411Trigger:PreTriggerIn()
    print("Q601411Trigger - PreTriggerIn")
end

function Q601411Trigger:LightUpTriggerIn()
    print("Q601411Trigger - LightUpTriggerIn")
end

function Q601411Trigger:TriggerOut()
    print("Q601411Trigger - TriggerOut")
end

return Q601411Trigger
