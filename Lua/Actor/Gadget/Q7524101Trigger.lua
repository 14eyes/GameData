require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7524101Trigger = class("Q7524101Trigger", GadgetActorProxy)
Q7524101Trigger.defaultAlias = "Q7524101Trigger"
local Q75241ClientConfig = require("Quest/Client/Q75241ClientConfig")

local this
local subIDs = Q75241ClientConfig.SubIDs
local datas = Q75241ClientConfig.Datas
local npcs = Q75241ClientConfig.Npcs
local points = Q75241ClientConfig.Points

function Q7524101Trigger:OnPostDataPrepare()
    print("Q7524101Trigger - OnPostDataPrepare")
    this = self
end

function Q7524101Trigger:OnPostComponentPrepare()
    print("Q7524101Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(5.996696, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75241)
end

function Q7524101Trigger:TriggerIn()
    print("Q7524101Trigger - TriggerIn")
    actorMgr:GetActor("75241"):TransmitPlayerWithQuestIdByData(7524101, 1, datas.TransmitData, nil, nil, nil)
    actorMgr:GetActor("75241"):CreateQuestNpcWithTrigger("Q7524101N6614Trigger", 7524101, npcs.Npc6614.id, 75241, 20, 2)
end

function Q7524101Trigger:PreTriggerIn()
    print("Q7524101Trigger - PreTriggerIn")
end

function Q7524101Trigger:LightUpTriggerIn()
    print("Q7524101Trigger - LightUpTriggerIn")
end

function Q7524101Trigger:TriggerOut()
    print("Q7524101Trigger - TriggerOut")
end

return Q7524101Trigger
