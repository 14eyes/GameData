require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q701413Trigger = class("Q701413Trigger", GadgetActorProxy)
Q701413Trigger.defaultAlias = "Q701413Trigger"
local Q7014ClientConfig = require("Quest/Client/Q7014ClientConfig")

local this
local subIDs = Q7014ClientConfig.SubIDs
local datas = Q7014ClientConfig.Datas
local npcs = Q7014ClientConfig.Npcs
local points = Q7014ClientConfig.Points

function Q701413Trigger:OnPostDataPrepare()
    print("Q701413Trigger - OnPostDataPrepare")
    this = self
end

function Q701413Trigger:OnPostComponentPrepare()
    print("Q701413Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(15.505838, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 7014)
end

function Q701413Trigger:TriggerIn()
    print("Q701413Trigger - TriggerIn")
    actorMgr:GetActor("7014"):TransmitPlayerWithQuestIdByData(701413, 1, datas.TransmitBlackData, nil, nil, nil)
end

function Q701413Trigger:PreTriggerIn()
    print("Q701413Trigger - PreTriggerIn")
end

function Q701413Trigger:LightUpTriggerIn()
    print("Q701413Trigger - LightUpTriggerIn")
end

function Q701413Trigger:TriggerOut()
    print("Q701413Trigger - TriggerOut")
end

return Q701413Trigger
