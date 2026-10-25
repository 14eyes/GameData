require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603612Trigger_1 = class("Q603612Trigger_1", GadgetActorProxy)
Q603612Trigger_1.defaultAlias = "Q603612Trigger_1"
local Q6036ClientConfig = require("Quest/Client/Q6036ClientConfig")

local this
local subIDs = Q6036ClientConfig.SubIDs
local datas = Q6036ClientConfig.Datas
local npcs = Q6036ClientConfig.Npcs
local points = Q6036ClientConfig.Points

function Q603612Trigger_1:OnPostDataPrepare()
    print("Q603612Trigger_1 - OnPostDataPrepare")
    this = self
end

function Q603612Trigger_1:OnPostComponentPrepare()
    print("Q603612Trigger_1 - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6036)
end

function Q603612Trigger_1:TriggerIn()
    print("Q603612Trigger_1 - TriggerIn")
    actorMgr:GetActor("6036"):TransmitPlayerWithQuestIdByData(603612, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603612Trigger_1:PreTriggerIn()
    print("Q603612Trigger_1 - PreTriggerIn")
end

function Q603612Trigger_1:LightUpTriggerIn()
    print("Q603612Trigger_1 - LightUpTriggerIn")
end

function Q603612Trigger_1:TriggerOut()
    print("Q603612Trigger_1 - TriggerOut")
end

return Q603612Trigger_1
