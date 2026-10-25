require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601426Trigger = class("Q601426Trigger", GadgetActorProxy)
Q601426Trigger.defaultAlias = "Q601426Trigger"
local Q6014ClientConfig = require("Quest/Client/Q6014ClientConfig")

local this
local subIDs = Q6014ClientConfig.SubIDs
local datas = Q6014ClientConfig.Datas
local npcs = Q6014ClientConfig.Npcs
local points = Q6014ClientConfig.Points

function Q601426Trigger:OnPostDataPrepare()
    print("Q601426Trigger - OnPostDataPrepare")
    this = self
end

function Q601426Trigger:OnPostComponentPrepare()
    print("Q601426Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6014)
end

function Q601426Trigger:TriggerIn()
    print("Q601426Trigger - TriggerIn")
    actorMgr:GetActor("6014"):PlayerEnterDungeonWithData(4, 1274, 601426, 2, datas.PlayerEnterDungeonSpecial06, nil, nil)
    this:DestroySelf()
end

function Q601426Trigger:PreTriggerIn()
    print("Q601426Trigger - PreTriggerIn")
end

function Q601426Trigger:LightUpTriggerIn()
    print("Q601426Trigger - LightUpTriggerIn")
end

function Q601426Trigger:TriggerOut()
    print("Q601426Trigger - TriggerOut")
end

return Q601426Trigger
