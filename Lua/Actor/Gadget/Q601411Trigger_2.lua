require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601411Trigger_2 = class("Q601411Trigger_2", GadgetActorProxy)
Q601411Trigger_2.defaultAlias = "Q601411Trigger_2"
local Q6014ClientConfig = require("Quest/Client/Q6014ClientConfig")

local this
local subIDs = Q6014ClientConfig.SubIDs
local datas = Q6014ClientConfig.Datas
local npcs = Q6014ClientConfig.Npcs
local points = Q6014ClientConfig.Points

function Q601411Trigger_2:OnPostDataPrepare()
    print("Q601411Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q601411Trigger_2:OnPostComponentPrepare()
    print("Q601411Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6014)
end

function Q601411Trigger_2:TriggerIn()
    print("Q601411Trigger_2 - TriggerIn")
    actorMgr:GetActor("6014"):PlayerEnterDungeonWithData(1794, 1274, 601411, 8, datas.TransmitDataBlackScreen, nil, nil)
    this:DestroySelf()
end

function Q601411Trigger_2:PreTriggerIn()
    print("Q601411Trigger_2 - PreTriggerIn")
end

function Q601411Trigger_2:LightUpTriggerIn()
    print("Q601411Trigger_2 - LightUpTriggerIn")
end

function Q601411Trigger_2:TriggerOut()
    print("Q601411Trigger_2 - TriggerOut")
end

return Q601411Trigger_2
