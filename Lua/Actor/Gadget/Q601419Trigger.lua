require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601419Trigger = class("Q601419Trigger", GadgetActorProxy)
Q601419Trigger.defaultAlias = "Q601419Trigger"
local Q6014ClientConfig = require("Quest/Client/Q6014ClientConfig")

local this
local subIDs = Q6014ClientConfig.SubIDs
local datas = Q6014ClientConfig.Datas
local npcs = Q6014ClientConfig.Npcs
local points = Q6014ClientConfig.Points

function Q601419Trigger:OnPostDataPrepare()
    print("Q601419Trigger - OnPostDataPrepare")
    this = self
end

function Q601419Trigger:OnPostComponentPrepare()
    print("Q601419Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6014)
end

function Q601419Trigger:TriggerIn()
    print("Q601419Trigger - TriggerIn")
    actorMgr:GetActor("6014"):PlayerEnterDungeonWithData(1, 1265, 601419, 6, datas.TransmitDataBlackScreen, nil, nil)
    this:DestroySelf()
end

function Q601419Trigger:PreTriggerIn()
    print("Q601419Trigger - PreTriggerIn")
end

function Q601419Trigger:LightUpTriggerIn()
    print("Q601419Trigger - LightUpTriggerIn")
end

function Q601419Trigger:TriggerOut()
    print("Q601419Trigger - TriggerOut")
end

return Q601419Trigger
