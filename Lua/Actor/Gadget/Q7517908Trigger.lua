require("Actor/ActorCommon")
local GadgetActorProxy = require("Actor/Gadget/GadgetActorProxy")

local Q7517908Trigger = class("Q7517908Trigger", GadgetActorProxy)
Q7517908Trigger.defaultAlias = "Q7517908Trigger"
local Q75179ClientConfig = require("Quest/Client/Q75179ClientConfig")

local this
local subIDs = Q75179ClientConfig.SubIDs
local datas = Q75179ClientConfig.Datas
local npcs = Q75179ClientConfig.Npcs
local points = Q75179ClientConfig.Points

function Q7517908Trigger:OnPostDataPrepare()
    print("Q7517908Trigger - OnPostDataPrepare")
    this = self
end

function Q7517908Trigger:OnPostComponentPrepare()
    print("Q7517908Trigger - OnPostComponentPrepare")
    this:AddComponentTrigger(21, DistType.EULER, {x = 0, y = 0, z = 0}, self.TriggerIn, self.TriggerOut, nil, self.PreTriggerIn, self.LightUpTriggerIn, 75179)
end

function Q7517908Trigger:TriggerIn()
    print("Q7517908Trigger - TriggerIn")
    actorMgr:GetActor("75179"):TransmitPlayerWithQuestIdByData(7517908, 3, datas.TransmitData_7517908, nil, nil, nil)
    actorMgr:GetActor("75179"):CallDelayByQuest("", 1.5, function(arg1)
        actorMgr:GetActor("75179"):RequestInteraction(npcs.Npc6348.alias, "", true)
        this:DestroySelf()
    end)
end

function Q7517908Trigger:PreTriggerIn()
    print("Q7517908Trigger - PreTriggerIn")
end

function Q7517908Trigger:LightUpTriggerIn()
    print("Q7517908Trigger - LightUpTriggerIn")
end

function Q7517908Trigger:TriggerOut()
    print("Q7517908Trigger - TriggerOut")
end

return Q7517908Trigger
