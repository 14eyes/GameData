require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601425Trigger = class("Q601425Trigger", GadgetActorProxy)
Q601425Trigger.defaultAlias = "Q601425Trigger"
local Q6014ClientConfig = require("Quest/Client/Q6014ClientConfig")

local this
local subIDs = Q6014ClientConfig.SubIDs
local datas = Q6014ClientConfig.Datas
local npcs = Q6014ClientConfig.Npcs
local points = Q6014ClientConfig.Points

function Q601425Trigger:OnPostDataPrepare()
    print("Q601425Trigger - OnPostDataPrepare")
    this = self
end

function Q601425Trigger:OnPostComponentPrepare()
    print("Q601425Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6014)
end

function Q601425Trigger:TriggerIn()
    print("Q601425Trigger - TriggerIn")
    actorMgr:GetActor("6014"):PlayerEnterDungeonWithData(1767, 1273, 601425, 4, datas.PlayerEnterDungeonSpecial04, nil, nil)
end

function Q601425Trigger:PreTriggerIn()
    print("Q601425Trigger - PreTriggerIn")
end

function Q601425Trigger:LightUpTriggerIn()
    print("Q601425Trigger - LightUpTriggerIn")
end

function Q601425Trigger:TriggerOut()
    print("Q601425Trigger - TriggerOut")
end

return Q601425Trigger
