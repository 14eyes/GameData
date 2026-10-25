require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q601316Trigger = class("Q601316Trigger", GadgetActorProxy)
Q601316Trigger.defaultAlias = "Q601316Trigger"
local Q6013ClientConfig = require("Quest/Client/Q6013ClientConfig")

local this
local subIDs = Q6013ClientConfig.SubIDs
local datas = Q6013ClientConfig.Datas
local npcs = Q6013ClientConfig.Npcs
local points = Q6013ClientConfig.Points

function Q601316Trigger:OnPostDataPrepare()
    print("Q601316Trigger - OnPostDataPrepare")
    this = self
end

function Q601316Trigger:OnPostComponentPrepare()
    print("Q601316Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(3.5, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 6013)
end

function Q601316Trigger:TriggerIn()
    print("Q601316Trigger - TriggerIn")
    actorMgr:GetActor("6013"):PlayerEnterDungeonWithData(2, 1261, 601316, 1, datas.TransmitDataBlackScreen, nil, nil)
    this:DestroySelf()
end

function Q601316Trigger:PreTriggerIn()
    print("Q601316Trigger - PreTriggerIn")
end

function Q601316Trigger:LightUpTriggerIn()
    print("Q601316Trigger - LightUpTriggerIn")
end

function Q601316Trigger:TriggerOut()
    print("Q601316Trigger - TriggerOut")
end

return Q601316Trigger
