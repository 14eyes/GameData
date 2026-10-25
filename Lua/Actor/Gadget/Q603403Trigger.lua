require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q603403Trigger = class("Q603403Trigger", GadgetActorProxy)
Q603403Trigger.defaultAlias = "Q603403Trigger"
local Q6034ClientConfig = require("Quest/Client/Q6034ClientConfig")

local this
local subIDs = Q6034ClientConfig.SubIDs
local datas = Q6034ClientConfig.Datas
local npcs = Q6034ClientConfig.Npcs
local points = Q6034ClientConfig.Points

function Q603403Trigger:OnPostDataPrepare()
    print("Q603403Trigger - OnPostDataPrepare")
    this = self
end

function Q603403Trigger:OnPostComponentPrepare()
    print("Q603403Trigger - OnPostComponentPrepare")
    this:AddCubeShapeTrigger(150, 150, 50, true, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6034)
end

function Q603403Trigger:TriggerIn()
    print("Q603403Trigger - TriggerIn")
    actorMgr:GetActor("6034"):TransmitPlayerWithQuestIdByData(603403, 1, datas.TransmitData_CommonBlack, nil, nil, nil)
    this:DestroySelf()
end

function Q603403Trigger:PreTriggerIn()
    print("Q603403Trigger - PreTriggerIn")
end

function Q603403Trigger:LightUpTriggerIn()
    print("Q603403Trigger - LightUpTriggerIn")
end

function Q603403Trigger:TriggerOut()
    print("Q603403Trigger - TriggerOut")
end

return Q603403Trigger
