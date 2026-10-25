require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7710433Trigger = class("Q7710433Trigger", GadgetActorProxy)
Q7710433Trigger.defaultAlias = "Q7710433Trigger"
local Q77104ClientConfig = require("Quest/Client/Q77104ClientConfig")

local this
local subIDs = Q77104ClientConfig.SubIDs
local datas = Q77104ClientConfig.Datas
local npcs = Q77104ClientConfig.Npcs
local points = Q77104ClientConfig.Points

function Q7710433Trigger:OnPostDataPrepare()
    print("Q7710433Trigger - OnPostDataPrepare")
    this = self
end

function Q7710433Trigger:OnPostComponentPrepare()
    print("Q7710433Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(50, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 77104)
end

function Q7710433Trigger:TriggerIn()
    print("Q7710433Trigger - TriggerIn")
    actorMgr:GetActor("77104"):RequestInteraction(npcs.Npc7653.alias, "", true)
    actorMgr:GetActor("77104"):TransmitPlayerByData(quest, 6, datas.TransmitData, function(arg1)
        actorMgr:GetActor("77104"):AfterMainPageActiveSafeCall(nil)
    end, nil, nil)
end

function Q7710433Trigger:PreTriggerIn()
    print("Q7710433Trigger - PreTriggerIn")
end

function Q7710433Trigger:LightUpTriggerIn()
    print("Q7710433Trigger - LightUpTriggerIn")
end

function Q7710433Trigger:TriggerOut()
    print("Q7710433Trigger - TriggerOut")
end

return Q7710433Trigger
