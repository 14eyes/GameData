require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601426Trigger_2 = class("Q601426Trigger_2", GadgetActorProxy)
Q601426Trigger_2.defaultAlias = "Q601426Trigger_2"
local Q6014ClientConfig = require("Quest/Client/Q6014ClientConfig")

local this
local subIDs = Q6014ClientConfig.SubIDs
local datas = Q6014ClientConfig.Datas
local npcs = Q6014ClientConfig.Npcs
local points = Q6014ClientConfig.Points

function Q601426Trigger_2:OnPostDataPrepare()
    print("Q601426Trigger_2 - OnPostDataPrepare")
    this = self
end

function Q601426Trigger_2:OnPostComponentPrepare()
    print("Q601426Trigger_2 - OnPostComponentPrepare")
    this:AddComponentTrigger(30, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6014)
end

function Q601426Trigger_2:TriggerIn()
    print("Q601426Trigger_2 - TriggerIn")
    actorMgr:GetActor("6014"):PlayerEnterDungeonWithData(1794, 1274, 601426, 2, datas.PlayerEnterDungeonSpecial06, nil, nil)
    this:DestroySelf()
end

function Q601426Trigger_2:PreTriggerIn()
    print("Q601426Trigger_2 - PreTriggerIn")
end

function Q601426Trigger_2:LightUpTriggerIn()
    print("Q601426Trigger_2 - LightUpTriggerIn")
end

function Q601426Trigger_2:TriggerOut()
    print("Q601426Trigger_2 - TriggerOut")
end

return Q601426Trigger_2
