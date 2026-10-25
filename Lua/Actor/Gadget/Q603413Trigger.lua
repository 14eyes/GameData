require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603413Trigger = class("Q603413Trigger", GadgetActorProxy)
Q603413Trigger.defaultAlias = "Q603413Trigger"
local Q6034ClientConfig = require("Quest/Client/Q6034ClientConfig")

local this
local subIDs = Q6034ClientConfig.SubIDs
local datas = Q6034ClientConfig.Datas
local npcs = Q6034ClientConfig.Npcs
local points = Q6034ClientConfig.Points

function Q603413Trigger:OnPostDataPrepare()
    print("Q603413Trigger - OnPostDataPrepare")
    this = self
end

function Q603413Trigger:OnPostComponentPrepare()
    print("Q603413Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(200, 200, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6034)
end

function Q603413Trigger:TriggerIn()
    print("Q603413Trigger - TriggerIn")
    actorMgr:GetActor("6034"):TransmitPlayerWithQuestIdByData(603413, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603413Trigger:PreTriggerIn()
    print("Q603413Trigger - PreTriggerIn")
end

function Q603413Trigger:LightUpTriggerIn()
    print("Q603413Trigger - LightUpTriggerIn")
end

function Q603413Trigger:TriggerOut()
    print("Q603413Trigger - TriggerOut")
end

return Q603413Trigger
